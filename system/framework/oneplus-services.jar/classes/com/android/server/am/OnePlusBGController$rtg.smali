.class public Lcom/android/server/am/OnePlusBGController$rtg;
.super Lcom/android/internal/os/BatterySipper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "rtg"
.end annotation


# instance fields
.field public Ac:D

.field public Bc:D

.field public Cc:J

.field public Dc:D

.field public Ec:D

.field public Fc:D

.field public Gc:D

.field public Hc:D

.field public Ic:D

.field public Jc:D

.field public Kc:D

.field public Lc:D

.field public Mc:D

.field public Nc:D

.field public Oc:D

.field public Pc:D

.field public nc:Lcom/android/server/am/OnePlusBGController$MySipperType;

.field public oc:J

.field public pc:D

.field public qc:D

.field public rc:D

.field public sc:D

.field public tc:D

.field public uc:D

.field public vc:D

.field public wc:D

.field public xc:D

.field public yc:D

.field public zc:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatterySipper;JI)V
    .locals 4

    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-wide v1, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getUidTotalRunningTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p2

    iput-wide p2, p0, oc:J

    new-instance p2, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;

    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result p3

    invoke-direct {p2, p3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;-><init>(I)V

    iput-object p2, p0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    :cond_0
    iget-wide p2, p1, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iput-wide p2, p0, qc:D

    iget-wide p2, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iput-wide p2, p0, rc:D

    iget-wide p2, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iput-wide p2, p0, sc:D

    iget-wide p2, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iput-wide p2, p0, tc:D

    iget-wide p2, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iput-wide p2, p0, uc:D

    iget-wide p2, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iput-wide p2, p0, vc:D

    iget-wide p2, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iput-wide p2, p0, wc:D

    iget-wide p2, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iput-wide p2, p0, xc:D

    iget-wide p2, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iput-wide p2, p0, yc:D

    iget-wide p2, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    iput-wide p2, p0, zc:D

    iget-wide p2, p1, Lcom/android/internal/os/BatterySipper;->audioPowerMah:D

    iput-wide p2, p0, Ac:D

    iget-wide p1, p1, Lcom/android/internal/os/BatterySipper;->videoPowerMah:D

    iput-wide p1, p0, Bc:D

    invoke-direct {p0}, am()D

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/OnePlusBGController$MySipperType;)V
    .locals 4

    sget-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    iput-object p1, p0, nc:Lcom/android/server/am/OnePlusBGController$MySipperType;

    return-void
.end method

.method private _l()D
    .locals 4

    iget-wide v0, p0, Ec:D

    iget-wide v2, p0, Fc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Gc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Hc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Ic:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Jc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Kc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Mc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Nc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Oc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Pc:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Dc:D

    iget-wide v0, p0, Dc:D

    return-wide v0
.end method

.method private am()D
    .locals 4

    iget-wide v0, p0, qc:D

    iget-wide v2, p0, rc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, sc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, tc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, uc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, vc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, wc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, xc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, yc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, zc:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Ac:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Bc:D

    add-double/2addr v0, v2

    iput-wide v0, p0, pc:D

    iget-wide v0, p0, pc:D

    return-wide v0
.end method


# virtual methods
.method public s()V
    .locals 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Dc:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Cc:J

    iput-wide v0, p0, Ec:D

    iput-wide v0, p0, Fc:D

    iput-wide v0, p0, Gc:D

    iput-wide v0, p0, Hc:D

    iput-wide v0, p0, Ic:D

    iput-wide v0, p0, Jc:D

    iput-wide v0, p0, Kc:D

    iput-wide v0, p0, Lc:D

    iput-wide v0, p0, Mc:D

    iput-wide v0, p0, Nc:D

    iput-wide v0, p0, Oc:D

    iput-wide v0, p0, Pc:D

    return-void
.end method

.method public t()V
    .locals 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, pc:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, oc:J

    iput-wide v0, p0, qc:D

    iput-wide v0, p0, rc:D

    iput-wide v0, p0, sc:D

    iput-wide v0, p0, tc:D

    iput-wide v0, p0, uc:D

    iput-wide v0, p0, vc:D

    iput-wide v0, p0, wc:D

    iput-wide v0, p0, xc:D

    iput-wide v0, p0, yc:D

    iput-wide v0, p0, zc:D

    iput-wide v0, p0, Ac:D

    iput-wide v0, p0, Bc:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  AccT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, nc:Lcom/android/server/am/OnePlusBGController$MySipperType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") |Run="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Cc:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusBGController;->ywr(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |Wifi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Fc:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |Gps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Gc:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |Cpu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Hc:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |Sen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ic:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |Mob="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Jc:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |Wak="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Kc:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |Flh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Mc:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |Ble="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Nc:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |Cam="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lc:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |Total="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Dc:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public zta(Lcom/android/server/am/OnePlusBGController$tsu;Lcom/android/server/am/OnePlusBGController$rtg;)V
    .locals 6

    iget-wide v0, p0, Cc:J

    iget-wide v2, p2, oc:J

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$tsu;->oc:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Cc:J

    iget-wide v0, p0, Ec:D

    iget-wide v2, p2, qc:D

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$tsu;->qc:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Ec:D

    iget-wide v0, p0, Fc:D

    iget-wide v2, p2, rc:D

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$tsu;->rc:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Fc:D

    iget-wide v0, p0, Gc:D

    iget-wide v2, p2, sc:D

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$tsu;->sc:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Gc:D

    iget-wide v0, p0, Hc:D

    iget-wide v2, p2, tc:D

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$tsu;->tc:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Hc:D

    iget-wide v0, p0, Ic:D

    iget-wide v2, p2, uc:D

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$tsu;->uc:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Ic:D

    iget-wide v0, p0, Jc:D

    iget-wide v2, p2, vc:D

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$tsu;->vc:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Jc:D

    iget-wide v0, p0, Kc:D

    iget-wide v2, p2, wc:D

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$tsu;->wc:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Kc:D

    iget-wide v0, p0, Lc:D

    iget-wide v2, p2, xc:D

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$tsu;->xc:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lc:D

    iget-wide v0, p0, Mc:D

    iget-wide v2, p2, yc:D

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$tsu;->yc:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Mc:D

    iget-wide v0, p0, Nc:D

    iget-wide v2, p2, zc:D

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$tsu;->zc:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Nc:D

    iget-wide v0, p0, Oc:D

    iget-wide v2, p2, Ac:D

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$tsu;->Ac:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Oc:D

    iget-wide v0, p0, Pc:D

    iget-wide v2, p2, Bc:D

    iget-wide p1, p1, Lcom/android/server/am/OnePlusBGController$tsu;->Bc:D

    sub-double/2addr v2, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Pc:D

    invoke-direct {p0}, _l()D

    return-void
.end method
