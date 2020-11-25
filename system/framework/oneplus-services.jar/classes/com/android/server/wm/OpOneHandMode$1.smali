.class Lcom/android/server/wm/OpOneHandMode$1;
.super Landroid/view/ISystemGestureExclusionListener$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/fto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/fto;


# direct methods
.method constructor <init>(Lcom/android/server/wm/fto;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/wm/fto;

    invoke-direct {p0}, Landroid/view/ISystemGestureExclusionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemGestureExclusionChanged(ILandroid/graphics/Region;)V
    .locals 1

    if-nez p1, :cond_1

    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "systemGestureExclusion="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpOneHandMode"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, this$0:Lcom/android/server/wm/fto;

    invoke-static {p0}, Lcom/android/server/wm/fto;->zta(Lcom/android/server/wm/fto;)Landroid/graphics/Region;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    :cond_1
    return-void
.end method
