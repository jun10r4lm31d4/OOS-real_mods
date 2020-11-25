.class Lcom/android/server/display/you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/rtg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/rtg;


# direct methods
.method constructor <init>(Lcom/android/server/display/rtg;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/display/rtg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    const/4 v0, 0x0

    aget v1, p1, v0

    aget v2, p1, v0

    mul-float/2addr v1, v2

    const/4 v2, 0x1

    aget v3, p1, v2

    aget v4, p1, v2

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    const/4 v3, 0x2

    aget v4, p1, v3

    aget v5, p1, v3

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    aget v1, p1, v3

    float-to-double v6, v1

    div-double/2addr v6, v4

    double-to-float v1, v6

    aput v1, p1, v3

    aget p1, p1, v3

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int p1, v4

    invoke-static {}, Lcom/android/server/display/rtg;->access$700()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inclination:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "OpProximityController"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/display/rtg;->access$500()I

    move-result v1

    if-gt p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-static {}, Lcom/android/server/display/rtg;->access$1800()Z

    move-result p1

    if-eq v2, p1, :cond_3

    iget-object p1, p0, this$0:Lcom/android/server/display/rtg;

    invoke-static {p1}, Lcom/android/server/display/rtg;->tsu(Lcom/android/server/display/rtg;)I

    move-result p1

    if-lez p1, :cond_2

    iget-object p0, p0, this$0:Lcom/android/server/display/rtg;

    invoke-static {p0}, Lcom/android/server/display/rtg;->rtg(Lcom/android/server/display/rtg;)I

    return-void

    :cond_2
    iget-object p1, p0, this$0:Lcom/android/server/display/rtg;

    invoke-static {p1, v0}, Lcom/android/server/display/rtg;->zta(Lcom/android/server/display/rtg;I)I

    invoke-static {v2}, Lcom/android/server/display/rtg;->access$1802(Z)Z

    iget-object p0, p0, this$0:Lcom/android/server/display/rtg;

    invoke-static {p0, v3}, Lcom/android/server/display/rtg;->you(Lcom/android/server/display/rtg;I)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, this$0:Lcom/android/server/display/rtg;

    invoke-static {p0, v0}, Lcom/android/server/display/rtg;->zta(Lcom/android/server/display/rtg;I)I

    :goto_1
    return-void
.end method
