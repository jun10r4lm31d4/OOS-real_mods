.class Lcom/android/server/p$rtg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "rtg"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/p;


# direct methods
.method private constructor <init>(Lcom/android/server/p;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/p;Lcom/android/server/o;)V
    .locals 0

    invoke-direct {p0, p1}, <init>(Lcom/android/server/p;)V

    return-void
.end method


# virtual methods
.method public resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "trigger_period"

    const-string v3, "monitor_num"

    const-string v4, "ignore_install_rule_forced"

    const-string v5, "monitor_forced"

    const-string v6, "thermal_precision"

    const-string v7, "thermal_path"

    const-string v8, "mdm"

    const-string v9, "bugreport_beta"

    const-string v10, "bugreport"

    const-string v11, "switch"

    const-string v12, "log_on"

    const-string v13, "OverHeatingDiagnosis"

    if-nez v1, :cond_0

    const-string v0, "[OnlineConfig] config is null!"

    :goto_0
    invoke-static {v13, v0}, Lcom/android/server/you$zta;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v14, v0, this$0:Lcom/android/server/p;

    invoke-static {v14}, Lcom/android/server/p;->igw(Lcom/android/server/p;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v0, "[OnlineConfig] OnlineConfig is disabled"

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lez v14, :cond_17

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    iget-object v14, v0, this$0:Lcom/android/server/p;

    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v14, v11}, Lcom/android/server/p;->sis(Lcom/android/server/p;Z)Z

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[OnlineConfig] mEnabled: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, this$0:Lcom/android/server/p;

    invoke-static {v14}, Lcom/android/server/p;->ssp(Lcom/android/server/p;)Z

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v14, "[OnlineConfig] mEnabledBugreport: "

    if-eqz v11, :cond_3

    :try_start_1
    iget-object v11, v0, this$0:Lcom/android/server/p;

    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v11, v10}, Lcom/android/server/p;->tsu(Lcom/android/server/p;Z)Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, this$0:Lcom/android/server/p;

    invoke-static {v11}, Lcom/android/server/p;->wtn(Lcom/android/server/p;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    sget-boolean v10, Lcom/android/server/OpPowerControllerService;->BETA_OR_ALPHA_ROM:Z

    if-eqz v10, :cond_4

    iget-object v10, v0, this$0:Lcom/android/server/p;

    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v10, v9}, Lcom/android/server/p;->tsu(Lcom/android/server/p;Z)Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, this$0:Lcom/android/server/p;

    invoke-static {v10}, Lcom/android/server/p;->wtn(Lcom/android/server/p;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v0, this$0:Lcom/android/server/p;

    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v9, v8}, Lcom/android/server/p;->rtg(Lcom/android/server/p;Z)Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] mEnabledMDM: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, this$0:Lcom/android/server/p;

    invoke-static {v9}, Lcom/android/server/p;->gck(Lcom/android/server/p;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, v0, this$0:Lcom/android/server/p;

    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/server/p;->zta(Lcom/android/server/p;Ljava/lang/String;)Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OnlineConfig] mThermalZonePath: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, this$0:Lcom/android/server/p;

    invoke-static {v8}, Lcom/android/server/p;->dma(Lcom/android/server/p;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, v0, this$0:Lcom/android/server/p;

    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v7, v6}, Lcom/android/server/p;->rtg(Lcom/android/server/p;I)I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig] mThermalZonePrecision: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, this$0:Lcom/android/server/p;

    invoke-static {v7}, Lcom/android/server/p;->ywr(Lcom/android/server/p;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v0, this$0:Lcom/android/server/p;

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v6, v5}, Lcom/android/server/p;->ssp(Lcom/android/server/p;Z)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] mMonitorForced: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, this$0:Lcom/android/server/p;

    invoke-static {v6}, Lcom/android/server/p;->qbh(Lcom/android/server/p;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v0, this$0:Lcom/android/server/p;

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v5, v4}, Lcom/android/server/p;->cno(Lcom/android/server/p;Z)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] mIgnoreInstallRuleForced: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, this$0:Lcom/android/server/p;

    invoke-static {v5}, Lcom/android/server/p;->oif(Lcom/android/server/p;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v0, this$0:Lcom/android/server/p;

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v4, v3}, Lcom/android/server/p;->ssp(Lcom/android/server/p;I)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] mMonitorNum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, this$0:Lcom/android/server/p;

    invoke-static {v4}, Lcom/android/server/p;->bvj(Lcom/android/server/p;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v0, this$0:Lcom/android/server/p;

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/server/p;->zta(Lcom/android/server/p;J)J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mTriggerPeriod: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, this$0:Lcom/android/server/p;

    invoke-static {v3}, Lcom/android/server/p;->ibl(Lcom/android/server/p;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const-string v2, "min_detect_period"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v0, this$0:Lcom/android/server/p;

    const-string v3, "min_detect_period"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/server/p;->you(Lcom/android/server/p;J)J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mMinDetectPeriod: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, this$0:Lcom/android/server/p;

    invoke-static {v3}, Lcom/android/server/p;->gwm(Lcom/android/server/p;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const-string v2, "monitor_period"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v0, this$0:Lcom/android/server/p;

    const-string v3, "monitor_period"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/server/p;->sis(Lcom/android/server/p;J)J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mMonitorPeriod: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, this$0:Lcom/android/server/p;

    invoke-static {v3}, Lcom/android/server/p;->ugm(Lcom/android/server/p;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const-string v2, "monitor_frequency"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v0, this$0:Lcom/android/server/p;

    const-string v3, "monitor_frequency"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/server/p;->tsu(Lcom/android/server/p;J)J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mMonitorFrequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, this$0:Lcom/android/server/p;

    invoke-static {v3}, Lcom/android/server/p;->vdb(Lcom/android/server/p;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const-string v2, "monitor_temp"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v0, this$0:Lcom/android/server/p;

    const-string v3, "monitor_temp"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/p;->cno(Lcom/android/server/p;I)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mMonitorTemp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, this$0:Lcom/android/server/p;

    invoke-static {v3}, Lcom/android/server/p;->zgw(Lcom/android/server/p;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const-string v2, "normal_current"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v0, this$0:Lcom/android/server/p;

    const-string v3, "normal_current"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Lcom/android/server/p;->rtg(Lcom/android/server/p;J)J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mNormalCurrent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, this$0:Lcom/android/server/p;

    invoke-static {v3}, Lcom/android/server/p;->obl(Lcom/android/server/p;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const-string v2, "critical_cpu"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v0, this$0:Lcom/android/server/p;

    const-string v3, "critical_cpu"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/p;->kth(Lcom/android/server/p;I)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mCriticalCpu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, this$0:Lcom/android/server/p;

    invoke-static {v3}, Lcom/android/server/p;->oxb(Lcom/android/server/p;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const-string v2, "critical_total_cpu"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v0, this$0:Lcom/android/server/p;

    const-string v3, "critical_total_cpu"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/p;->bio(Lcom/android/server/p;I)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mCriticalTotalCpu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, this$0:Lcom/android/server/p;

    invoke-static {v3}, Lcom/android/server/p;->cjf(Lcom/android/server/p;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const-string v2, "critical_foreground"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v0, this$0:Lcom/android/server/p;

    const-string v3, "critical_foreground"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/server/p;->ssp(Lcom/android/server/p;J)J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mCriticalForeground: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, this$0:Lcom/android/server/p;

    invoke-static {v3}, Lcom/android/server/p;->ear(Lcom/android/server/p;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const-string v2, "critical_charging"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v0, this$0:Lcom/android/server/p;

    const-string v3, "critical_charging"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/server/p;->cno(Lcom/android/server/p;J)J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mCriticalCharging: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, this$0:Lcom/android/server/p;

    invoke-static {v3}, Lcom/android/server/p;->ire(Lcom/android/server/p;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    invoke-virtual {v15, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_16

    invoke-virtual {v15, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-static {v3}, Lcom/android/server/you$zta;->cno(Z)V

    goto :goto_1

    :cond_15
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/you$zta;->cno(Z)V

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] log_on: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_17

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v4, v0, this$0:Lcom/android/server/p;

    const-string v5, "system_report_rules"

    iget-object v6, v0, this$0:Lcom/android/server/p;

    iget-object v6, v6, Lcom/android/server/p;->ij:Lcom/android/server/p$cno;

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/server/p;->zta(Lorg/json/JSONObject;Ljava/lang/String;Lcom/android/server/p$cno;)V

    iget-object v4, v0, this$0:Lcom/android/server/p;

    const-string v5, "ota_upgrade_rules"

    iget-object v6, v0, this$0:Lcom/android/server/p;

    iget-object v6, v6, Lcom/android/server/p;->jj:Lcom/android/server/p$cno;

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/server/p;->zta(Lorg/json/JSONObject;Ljava/lang/String;Lcom/android/server/p$cno;)V

    iget-object v4, v0, this$0:Lcom/android/server/p;

    const-string v5, "install_rules"

    iget-object v6, v0, this$0:Lcom/android/server/p;

    iget-object v6, v6, Lcom/android/server/p;->kj:Lcom/android/server/p$cno;

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/server/p;->zta(Lorg/json/JSONObject;Ljava/lang/String;Lcom/android/server/p$cno;)V

    iget-object v4, v0, this$0:Lcom/android/server/p;

    const-string v5, "dexopt_rules"

    iget-object v6, v0, this$0:Lcom/android/server/p;

    iget-object v6, v6, Lcom/android/server/p;->lj:Lcom/android/server/p$cno;

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/server/p;->zta(Lorg/json/JSONObject;Ljava/lang/String;Lcom/android/server/p$cno;)V

    iget-object v4, v0, this$0:Lcom/android/server/p;

    const-string v5, "forground_report_rules"

    iget-object v6, v0, this$0:Lcom/android/server/p;

    iget-object v6, v6, Lcom/android/server/p;->mj:Lcom/android/server/p$cno;

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/server/p;->zta(Lorg/json/JSONObject;Ljava/lang/String;Lcom/android/server/p$cno;)V

    iget-object v4, v0, this$0:Lcom/android/server/p;

    const-string v5, "background_report_rules"

    iget-object v6, v0, this$0:Lcom/android/server/p;

    iget-object v6, v6, Lcom/android/server/p;->nj:Lcom/android/server/p$cno;

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/server/p;->zta(Lorg/json/JSONObject;Ljava/lang/String;Lcom/android/server/p$cno;)V

    iget-object v4, v0, this$0:Lcom/android/server/p;

    const-string v5, "unknown_report_rules"

    iget-object v6, v0, this$0:Lcom/android/server/p;

    iget-object v6, v6, Lcom/android/server/p;->oj:Lcom/android/server/p$cno;

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/server/p;->zta(Lorg/json/JSONObject;Ljava/lang/String;Lcom/android/server/p$cno;)V

    iget-object v4, v0, this$0:Lcom/android/server/p;

    const-string v5, "flashlight_report_rules"

    iget-object v6, v0, this$0:Lcom/android/server/p;

    iget-object v6, v6, Lcom/android/server/p;->rj:Lcom/android/server/p$cno;

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/server/p;->zta(Lorg/json/JSONObject;Ljava/lang/String;Lcom/android/server/p$cno;)V

    iget-object v4, v0, this$0:Lcom/android/server/p;

    const-string v5, "total_cpu_load_report_rules"

    iget-object v6, v0, this$0:Lcom/android/server/p;

    iget-object v6, v6, Lcom/android/server/p;->pj:Lcom/android/server/p$cno;

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/server/p;->zta(Lorg/json/JSONObject;Ljava/lang/String;Lcom/android/server/p$cno;)V

    iget-object v4, v0, this$0:Lcom/android/server/p;

    const-string v5, "camera_hardware_rules"

    iget-object v6, v0, this$0:Lcom/android/server/p;

    iget-object v6, v6, Lcom/android/server/p;->qj:Lcom/android/server/p$cno;

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/server/p;->zta(Lorg/json/JSONObject;Ljava/lang/String;Lcom/android/server/p$cno;)V

    iget-object v4, v0, this$0:Lcom/android/server/p;

    const-string v5, "phone_call_rules"

    iget-object v6, v0, this$0:Lcom/android/server/p;

    iget-object v6, v6, Lcom/android/server/p;->sj:Lcom/android/server/p$cno;

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/server/p;->zta(Lorg/json/JSONObject;Ljava/lang/String;Lcom/android/server/p$cno;)V

    iget-object v4, v0, this$0:Lcom/android/server/p;

    const-string v5, "env_rules"

    iget-object v6, v0, this$0:Lcom/android/server/p;

    iget-object v6, v6, Lcom/android/server/p;->tj:Lcom/android/server/p$cno;

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/server/p;->zta(Lorg/json/JSONObject;Ljava/lang/String;Lcom/android/server/p$cno;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/server/you$zta;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    return-void
.end method

.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    invoke-virtual {p0, p1}, resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method
