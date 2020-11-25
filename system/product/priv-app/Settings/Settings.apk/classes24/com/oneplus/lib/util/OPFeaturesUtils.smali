.class public Lcom/oneplus/lib/util/OPFeaturesUtils;
.super Ljava/lang/Object;
.source "OPFeaturesUtils.java"


# static fields
.field private static final ONEPLUS_BILLIE2:Ljava/lang/String; = "billie2"

.field private static final ONEPLUS_BILLIE2T:Ljava/lang/String; = "billie2t"

.field private static final ONEPLUS_BILLIE8:Ljava/lang/String; = "billie8"

.field private static final ONEPLUS_BILLIE8T:Ljava/lang/String; = "billie8t"

.field private static sIsSupport:Ljava/lang/reflect/Method;

.field private static sOPFeatures:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, loadFeatures()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBillie2OrBillie8Products()Z
    .locals 4

    const-string v0, "ro.boot.project_codename"

    invoke-static {v0}, Lcom/oneplus/lib/util/ReflectUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "billie2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "billie2t"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "billie8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "billie8t"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBillie2OrBillie8Products ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , product : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OPFeaturesUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isSupportXVibrate()Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    sget-object v3, sOPFeatures:Ljava/lang/Class;

    if-eqz v3, :cond_0

    sget-object v3, sIsSupport:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    :cond_0
    invoke-static {}, loadFeatures()V

    :cond_1
    sget-object v3, sOPFeatures:Ljava/lang/Class;

    const-string v4, "OP_FEATURE_X_LINEAR_VIBRATION_MOTOR"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sget-object v4, sIsSupport:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v4, sIsSupport:Ljava/lang/reflect/Method;

    new-array v5, v2, [Ljava/lang/Object;

    new-array v6, v2, [I

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    aput v8, v6, v1

    aput-object v6, v5, v1

    invoke-virtual {v4, v7, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_0
    if-nez v0, :cond_2

    invoke-static {}, isBillie2OrBillie8Products()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public static isSupportZVibrate()Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, sOPFeatures:Ljava/lang/Class;

    if-eqz v1, :cond_0

    sget-object v1, sIsSupport:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, loadFeatures()V

    :cond_1
    sget-object v1, sOPFeatures:Ljava/lang/Class;

    const-string v2, "OP_FEATURE_Z_VIBRATION_MOTOR"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sget-object v2, sIsSupport:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v2, sIsSupport:Ljava/lang/reflect/Method;

    new-array v4, v3, [Ljava/lang/Object;

    new-array v3, v3, [I

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    const/4 v7, 0x0

    aput v6, v3, v7

    aput-object v3, v4, v7

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method private static loadFeatures()V
    .locals 5

    :try_start_0
    const-string v0, "android.util.OpFeatures"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, sOPFeatures:Ljava/lang/Class;

    sget-object v0, sOPFeatures:Ljava/lang/Class;

    const-string v1, "isSupport"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [I

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, sIsSupport:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method
