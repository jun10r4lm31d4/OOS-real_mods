.class abstract Lcom/android/server/display/whitebalance/AmbientSensor;
.super Ljava/lang/Object;
.source "AmbientSensor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;,
        Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;
    }
.end annotation


# static fields
.field private static final HISTORY_SIZE:I = 0x32


# instance fields
.field private mEnabled:Z

.field private mEventsCount:I

.field private mEventsHistory:Lcom/android/server/display/utils/History;

.field private final mHandler:Landroid/os/Handler;

.field private mListener:Landroid/hardware/SensorEventListener;

.field protected mLoggingEnabled:Z

.field private mRate:I

.field protected mSensor:Landroid/hardware/Sensor;

.field protected final mSensorManager:Landroid/hardware/SensorManager;

.field protected mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Handler;Landroid/hardware/SensorManager;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/display/whitebalance/AmbientSensor$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/whitebalance/AmbientSensor$1;-><init>(Lcom/android/server/display/whitebalance/AmbientSensor;)V

    iput-object v0, p0, mListener:Landroid/hardware/SensorEventListener;

    invoke-static {p2, p3, p4}, validateArguments(Landroid/os/Handler;Landroid/hardware/SensorManager;I)V

    iput-object p1, p0, mTag:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, mLoggingEnabled:Z

    iput-object p2, p0, mHandler:Landroid/os/Handler;

    iput-object p3, p0, mSensorManager:Landroid/hardware/SensorManager;

    iput-boolean v0, p0, mEnabled:Z

    iput p4, p0, mRate:I

    iput v0, p0, mEventsCount:I

    new-instance v0, Lcom/android/server/display/utils/History;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/android/server/display/utils/History;-><init>(I)V

    iput-object v0, p0, mEventsHistory:Lcom/android/server/display/utils/History;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/whitebalance/AmbientSensor;F)V
    .locals 0

    invoke-direct {p0, p1}, handleNewEvent(F)V

    return-void
.end method

.method private disable()Z
    .locals 3

    iget-boolean v0, p0, mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, mLoggingEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, mTag:Ljava/lang/String;

    const-string v2, "disabling"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean v1, p0, mEnabled:Z

    iput v1, p0, mEventsCount:I

    invoke-direct {p0}, stopListening()V

    const/4 v0, 0x1

    return v0
.end method

.method private enable()Z
    .locals 2

    iget-boolean v0, p0, mEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, mLoggingEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, mTag:Ljava/lang/String;

    const-string v1, "enabling"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, mEnabled:Z

    invoke-direct {p0}, startListening()V

    return v0
.end method

.method private handleNewEvent(F)V
    .locals 3

    iget-boolean v0, p0, mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, mLoggingEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle new event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v0, p0, mEventsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mEventsCount:I

    iget-object v0, p0, mEventsHistory:Lcom/android/server/display/utils/History;

    invoke-virtual {v0, p1}, Lcom/android/server/display/utils/History;->add(F)V

    invoke-virtual {p0, p1}, update(F)V

    return-void
.end method

.method private startListening()V
    .locals 5

    iget-object v0, p0, mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, mListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, mSensor:Landroid/hardware/Sensor;

    iget v3, p0, mRate:I

    mul-int/lit16 v3, v3, 0x3e8

    iget-object v4, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    return-void
.end method

.method private stopListening()V
    .locals 2

    iget-object v0, p0, mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method private static validateArguments(Landroid/os/Handler;Landroid/hardware/SensorManager;I)V
    .locals 2

    const-string v0, "handler cannot be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "sensorManager cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rate must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLoggingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mLoggingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mSensorManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mEventsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mEventsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mEventsHistory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, mEventsHistory:Lcom/android/server/display/utils/History;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public setEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, enable()Z

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0}, disable()Z

    move-result v0

    return v0
.end method

.method public setLoggingEnabled(Z)Z
    .locals 1

    iget-boolean v0, p0, mLoggingEnabled:Z

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iput-boolean p1, p0, mLoggingEnabled:Z

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract update(F)V
.end method
