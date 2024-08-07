.class public Lcom/oneplus/android/server/scene/GameModeObserver;
.super Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;
.source ""


# static fields
.field private static final DBG:Z

.field private static final GAME_MODE_ANSWER_NO_INCALLUI:Ljava/lang/String; = "game_mode_answer_no_incallui"

.field private static final TAG:Ljava/lang/String; = "GameModeObserver"

.field private static sInstance:Lcom/oneplus/android/server/scene/GameModeObserver;


# instance fields
.field private mModeOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, mModeOn:Z

    return-void
.end method

.method public static final getInstance()Lcom/oneplus/android/server/scene/GameModeObserver;
    .locals 1

    sget-object v0, sInstance:Lcom/oneplus/android/server/scene/GameModeObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/android/server/scene/GameModeObserver;

    invoke-direct {v0}, <init>()V

    sput-object v0, sInstance:Lcom/oneplus/android/server/scene/GameModeObserver;

    :cond_0
    sget-object v0, sInstance:Lcom/oneplus/android/server/scene/GameModeObserver;

    return-object v0
.end method


# virtual methods
.method public isAnswerCallBySpeaker(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "game_mode_answer_no_incallui"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move p1, v0

    :cond_0
    return p1
.end method

.method public isGameModeOn()Z
    .locals 0

    iget-boolean p0, p0, mModeOn:Z

    return p0
.end method

.method public onConfig(Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onStart([Ljava/lang/String;)I
    .locals 1

    sget-boolean p1, DBG:Z

    if-eqz p1, :cond_0

    const-string p1, "GameModeObserver"

    const-string v0, "game mode: start"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, mModeOn:Z

    const/4 p0, 0x0

    return p0
.end method

.method public onStop([Ljava/lang/String;)I
    .locals 1

    sget-boolean p1, DBG:Z

    if-eqz p1, :cond_0

    const-string p1, "GameModeObserver"

    const-string v0, "game mode: stop"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, mModeOn:Z

    return p1
.end method
