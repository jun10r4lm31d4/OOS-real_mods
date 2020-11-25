.class Lcom/android/server/display/LuxNitPoint;
.super Ljava/lang/Object;
.source "CurveGen.java"


# instance fields
.field lux:F

.field nit:F


# direct methods
.method constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, lux:F

    iput p2, p0, nit:F

    return-void
.end method


# virtual methods
.method copy()Lcom/android/server/display/LuxNitPoint;
    .locals 3

    new-instance v0, Lcom/android/server/display/LuxNitPoint;

    iget v1, p0, lux:F

    iget v2, p0, nit:F

    invoke-direct {v0, v1, v2}, <init>(FF)V

    return-object v0
.end method

.method fromJsonObject(Lorg/json/JSONObject;)Z
    .locals 2

    :try_start_0
    const-string/jumbo v0, "lux"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, lux:F

    const-string/jumbo v0, "nit"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, nit:F
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method toJsonObject()Lorg/json/JSONObject;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "lux"

    iget v2, p0, lux:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v1, "nit"

    iget v2, p0, nit:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method
