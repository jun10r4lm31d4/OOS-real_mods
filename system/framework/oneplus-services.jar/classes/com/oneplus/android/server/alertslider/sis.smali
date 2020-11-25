.class public Lcom/oneplus/android/server/alertslider/sis;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final Aja:I = -0x1

.field public static final SWITCH_STATE_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AlertSliderBase"

.field public static final yja:I = 0x2

.field public static final zja:I = 0x3


# instance fields
.field private mContext:Landroid/content/Context;

.field private xja:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, xja:I

    iput-object p1, p0, mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public J(I)V
    .locals 1

    iget v0, p0, xja:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, K(I)V

    :cond_0
    return-void
.end method

.method protected K(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p0, "AlertSliderBase"

    const-string p1, "invalid switchState"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, vdb()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, zta()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, setUp()V

    :goto_0
    iput p1, p0, xja:I

    return-void
.end method

.method public getAlertSliderMode()I
    .locals 0

    iget p0, p0, xja:I

    return p0
.end method

.method public init(I)V
    .locals 0

    iput p1, p0, xja:I

    iget p1, p0, xja:I

    invoke-virtual {p0, p1}, K(I)V

    return-void
.end method

.method public isDown()Z
    .locals 1

    iget p0, p0, xja:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUp()Z
    .locals 1

    iget p0, p0, xja:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public kf()Z
    .locals 1

    iget p0, p0, xja:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reset()V
    .locals 2

    const-string v0, "AlertSliderBase"

    const-string v1, "[reset]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, xja:I

    invoke-virtual {p0, v0}, init(I)V

    return-void
.end method

.method protected setUp()V
    .locals 0

    return-void
.end method

.method protected vdb()V
    .locals 0

    return-void
.end method

.method protected zta()V
    .locals 0

    return-void
.end method
