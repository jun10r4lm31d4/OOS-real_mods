.class public Lcom/android/server/OpSmartDozeInjector;
.super Ljava/lang/Object;
.source "OpSmartDozeInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "OpSmartDozeInjector"

.field private static opSmartDoze:Lcom/android/server/IOpSmartDoze;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "OpSmartDozeInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAfterInactiveTimeout()J
    .locals 2

    sget-object v0, opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_doze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpSmartDoze;

    sput-object v0, opSmartDoze:Lcom/android/server/IOpSmartDoze;

    :cond_0
    sget-object v0, opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/IOpSmartDoze;->getAfterInactiveTimeout()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/32 v0, 0x1b7740

    return-wide v0
.end method

.method public static getInactiveTimeout()J
    .locals 2

    sget-object v0, opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_doze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpSmartDoze;

    sput-object v0, opSmartDoze:Lcom/android/server/IOpSmartDoze;

    :cond_0
    sget-object v0, opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/IOpSmartDoze;->getInactiveTimeout()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/32 v0, 0x1b7740

    return-wide v0
.end method

.method public static getNotificationDirectRepliedUid(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpSmartDozeInjector"

    const-string v1, "call OpSmartDozeInjector.getNotificationDirectRepliedUid()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_doze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpSmartDoze;

    sput-object v0, opSmartDoze:Lcom/android/server/IOpSmartDoze;

    :cond_1
    sget-object v0, opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/android/server/IOpSmartDoze;->getNotificationDirectRepliedUid(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static initInstance(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 2

    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpSmartDozeInjector"

    const-string v1, "call OpSmartDozeInjector.initInstance()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_doze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpSmartDoze;

    sput-object v0, opSmartDoze:Lcom/android/server/IOpSmartDoze;

    :cond_1
    sget-object v0, opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/android/server/IOpSmartDoze;->initInstance(Lcom/android/server/net/NetworkPolicyManagerService;)V

    :cond_2
    return-void
.end method

.method public static initInstance(Lcom/android/server/power/PowerManagerService$PmsInner;)V
    .locals 2

    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpSmartDozeInjector"

    const-string v1, "call OpSmartDozeInjector.initInstance()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_doze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpSmartDoze;

    sput-object v0, opSmartDoze:Lcom/android/server/IOpSmartDoze;

    :cond_1
    sget-object v0, opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/android/server/IOpSmartDoze;->initInstance(Lcom/android/server/power/PowerManagerService$PmsInner;)V

    :cond_2
    return-void
.end method

.method public static isSmartDozeWhitelisted(I)Z
    .locals 2

    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpSmartDozeInjector"

    const-string v1, "call OpSmartDozeInjector.isSmartDozeWhitelisted()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_doze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpSmartDoze;

    sput-object v0, opSmartDoze:Lcom/android/server/IOpSmartDoze;

    :cond_1
    sget-object v0, opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/android/server/IOpSmartDoze;->isSmartDozeWhitelisted(I)Z

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static setAlarmCauseExitDoze()V
    .locals 2

    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpSmartDozeInjector"

    const-string v1, "call OpSmartDozeInjector.setAlarmCauseExitDoze()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_doze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpSmartDoze;

    sput-object v0, opSmartDoze:Lcom/android/server/IOpSmartDoze;

    :cond_1
    sget-object v0, opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/server/IOpSmartDoze;->setAlarmCauseExitDoze()V

    :cond_2
    return-void
.end method

.method public static setAlarmToUpdateWakeLock()V
    .locals 2

    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpSmartDozeInjector"

    const-string v1, "call OpSmartDozeInjector.setAlarmToUpdateWakeLock()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_doze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpSmartDoze;

    sput-object v0, opSmartDoze:Lcom/android/server/IOpSmartDoze;

    :cond_1
    sget-object v0, opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/server/IOpSmartDoze;->setAlarmToUpdateWakeLock()V

    :cond_2
    return-void
.end method

.method public static shellCommand(Lcom/android/server/DeviceIdleController$Shell;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 2

    sget-object v0, opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_doze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpSmartDoze;

    sput-object v0, opSmartDoze:Lcom/android/server/IOpSmartDoze;

    :cond_0
    const/4 v0, 0x0

    if-nez v0, :cond_1

    sget-object v1, opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-eqz v1, :cond_1

    invoke-interface {v1, p0, p1, p2}, Lcom/android/server/IOpSmartDoze;->shellCommand(Lcom/android/server/DeviceIdleController$Shell;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public static updateRulesForSmartDozeWhitelistedAppIds(Landroid/util/SparseIntArray;)V
    .locals 2

    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpSmartDozeInjector"

    const-string v1, "call OpSmartDozeInjector.updateRulesForSmartDozeWhitelistedAppIds()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_doze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpSmartDoze;

    sput-object v0, opSmartDoze:Lcom/android/server/IOpSmartDoze;

    :cond_1
    sget-object v0, opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/android/server/IOpSmartDoze;->updateRulesForSmartDozeWhitelistedAppIds(Landroid/util/SparseIntArray;)V

    :cond_2
    return-void
.end method
