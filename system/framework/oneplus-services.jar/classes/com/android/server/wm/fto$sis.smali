.class final Lcom/android/server/wm/fto$sis;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/fto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "sis"
.end annotation


# instance fields
.field private final qbh:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/wm/fto;

.field private final ywr:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/fto;)V
    .locals 3

    iput-object p1, p0, this$0:Lcom/android/server/wm/fto;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v0, "navigation_mode"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, ywr:Landroid/net/Uri;

    const-string v0, "op_one_hand_mode_setting"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, qbh:Landroid/net/Uri;

    invoke-static {p1}, Lcom/android/server/wm/fto;->you(Lcom/android/server/wm/fto;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, ywr:Landroid/net/Uri;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, qbh:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    iget-object p1, p0, this$0:Lcom/android/server/wm/fto;

    invoke-static {p1}, Lcom/android/server/wm/fto;->you(Lcom/android/server/wm/fto;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "navigation_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {p1, v0}, Lcom/android/server/wm/fto;->zta(Lcom/android/server/wm/fto;Z)Z

    iget-object p1, p0, this$0:Lcom/android/server/wm/fto;

    invoke-static {p1}, Lcom/android/server/wm/fto;->you(Lcom/android/server/wm/fto;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, -0x2

    const-string v4, "op_one_hand_mode_setting"

    invoke-static {v0, v4, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-static {p1, v1}, Lcom/android/server/wm/fto;->you(Lcom/android/server/wm/fto;Z)Z

    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Trigger change by self. mGestureButtonEnabled="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, this$0:Lcom/android/server/wm/fto;

    invoke-static {v0}, Lcom/android/server/wm/fto;->sis(Lcom/android/server/wm/fto;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mOneHandModeEnabled="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, this$0:Lcom/android/server/wm/fto;

    invoke-static {p0}, Lcom/android/server/wm/fto;->tsu(Lcom/android/server/wm/fto;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpOneHandMode"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, ywr:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "OpOneHandMode"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, this$0:Lcom/android/server/wm/fto;

    invoke-static {p1}, Lcom/android/server/wm/fto;->you(Lcom/android/server/wm/fto;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "navigation_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-static {p1, v3}, Lcom/android/server/wm/fto;->zta(Lcom/android/server/wm/fto;Z)Z

    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trigger change by observer uri. mGestureButtonEnabled="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, this$0:Lcom/android/server/wm/fto;

    invoke-static {v3}, Lcom/android/server/wm/fto;->sis(Lcom/android/server/wm/fto;)Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p1, p0, qbh:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, this$0:Lcom/android/server/wm/fto;

    invoke-static {p1}, Lcom/android/server/wm/fto;->you(Lcom/android/server/wm/fto;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v3, -0x2

    const-string v4, "op_one_hand_mode_setting"

    invoke-static {p2, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-ne p2, v1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-static {p1, v1}, Lcom/android/server/wm/fto;->you(Lcom/android/server/wm/fto;Z)Z

    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Trigger change by observer uri. mOneHandModeEnabled="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, this$0:Lcom/android/server/wm/fto;

    invoke-static {p2}, Lcom/android/server/wm/fto;->tsu(Lcom/android/server/wm/fto;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p1, p0, this$0:Lcom/android/server/wm/fto;

    invoke-static {p1}, Lcom/android/server/wm/fto;->tsu(Lcom/android/server/wm/fto;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, this$0:Lcom/android/server/wm/fto;

    invoke-virtual {p1}, Lcom/android/server/wm/fto;->isOneHandModeRunning()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_5

    const-string p1, "One handed disable. Cancel One Handed immediate."

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object p0, p0, this$0:Lcom/android/server/wm/fto;

    invoke-virtual {p0}, Lcom/android/server/wm/fto;->requestExitOneHandMode()Z

    :cond_6
    return-void
.end method
