.class public Lcom/android/server/OPInstantAppInjector;
.super Ljava/lang/Object;
.source "OPInstantAppInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "OPInstantAppInjector"

.field private static opInstantAppHelper:Lcom/android/server/IOPInstantAppService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppStartModeLocked(Ljava/lang/String;)I
    .locals 1

    sget-object v0, opInstantAppHelper:Lcom/android/server/IOPInstantAppService;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/IOPInstantAppService;->getAppStartModeLocked(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    sget-object v0, opInstantAppHelper:Lcom/android/server/IOPInstantAppService;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_op_instant_app:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOPInstantAppService;

    sput-object v0, opInstantAppHelper:Lcom/android/server/IOPInstantAppService;

    :cond_0
    sget-object v0, opInstantAppHelper:Lcom/android/server/IOPInstantAppService;

    if-eqz v0, :cond_1

    const-string v0, "OPInstantAppInjector"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, opInstantAppHelper:Lcom/android/server/IOPInstantAppService;

    invoke-interface {v0, p0}, Lcom/android/server/IOPInstantAppService;->init(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
