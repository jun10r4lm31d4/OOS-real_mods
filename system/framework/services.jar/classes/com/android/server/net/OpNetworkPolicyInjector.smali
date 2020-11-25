.class public Lcom/android/server/net/OpNetworkPolicyInjector;
.super Ljava/lang/Object;
.source "OpNetworkPolicyInjector.java"


# static fields
.field private static final DEBUG_ONEPLUS:Z

.field private static final TAG:Ljava/lang/String; = "OpNetworkPolicyInjector"

.field private static opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustUidRulesForStandby(ILandroid/util/SparseIntArray;)Landroid/util/SparseIntArray;
    .locals 1

    sget-object v0, opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_networkpolicymanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/IOpNetworkPolicy;

    sput-object v0, opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    :cond_0
    sget-object v0, opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/android/server/net/IOpNetworkPolicy;->adjustUidRulesForStandby(ILandroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v0

    return-object v0

    :cond_1
    return-object p1
.end method

.method public static dynamicallyConfigNetworkPolicyManagerServiceLogTag(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 1

    sget-object v0, opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_networkpolicymanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/IOpNetworkPolicy;

    sput-object v0, opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    :cond_0
    sget-object v0, opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/net/IOpNetworkPolicy;->dynamicallyConfigNetworkPolicyManagerServiceLogTag(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static handleMessage(Landroid/os/Message;)Z
    .locals 1

    sget-object v0, opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_networkpolicymanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/IOpNetworkPolicy;

    sput-object v0, opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    :cond_0
    sget-object v0, opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/server/net/IOpNetworkPolicy;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static ifEnableLogDump()Z
    .locals 1

    sget-object v0, opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_networkpolicymanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/IOpNetworkPolicy;

    sput-object v0, opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    :cond_0
    sget-object v0, opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/net/IOpNetworkPolicy;->ifEnableLogDump()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static initInstance(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    sget-object v0, opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_networkpolicymanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/IOpNetworkPolicy;

    sput-object v0, opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    :cond_0
    sget-object v0, opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/net/IOpNetworkPolicy;->initInstance(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/content/Context;Landroid/os/Handler;)V

    :cond_1
    return-void
.end method

.method public static isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z
    .locals 1

    sget-object v0, opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_networkpolicymanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/IOpNetworkPolicy;

    sput-object v0, opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    :cond_0
    sget-object v0, opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/android/server/net/IOpNetworkPolicy;->isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static setDeviceIdleMode(Z)V
    .locals 1

    sget-object v0, opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_networkpolicymanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/IOpNetworkPolicy;

    sput-object v0, opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    :cond_0
    sget-object v0, opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/server/net/IOpNetworkPolicy;->setDeviceIdleMode(Z)V

    :cond_1
    return-void
.end method

.method public static setEarlyRestriction()V
    .locals 1

    sget-object v0, opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_networkpolicymanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/IOpNetworkPolicy;

    sput-object v0, opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    :cond_0
    sget-object v0, opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/net/IOpNetworkPolicy;->setEarlyRestriction()V

    :cond_1
    return-void
.end method