.class public final enum Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CRITERIA_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum Jwa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum Kwa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum Lwa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum Mwa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum Nwa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum mxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum nxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum oxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum pxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum qxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum rxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum sxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum txa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum uxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum vxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum wxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const/4 v1, 0x0

    const-string v2, "USERSPEACE_WAKELOCK"

    invoke-direct {v0, v2, v1}, <init>(Ljava/lang/String;I)V

    sput-object v0, Jwa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const/4 v2, 0x1

    const-string v3, "USERSPEACE_WAKELOCK_MINOR"

    invoke-direct {v0, v3, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, mxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const/4 v3, 0x2

    const-string v4, "KERNELSPACE_WAKELOCK"

    invoke-direct {v0, v4, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, Kwa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const/4 v4, 0x3

    const-string v5, "KERNELSPACE_WAKELOCK_MINOR"

    invoke-direct {v0, v5, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, nxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const/4 v5, 0x4

    const-string v6, "KERNEL_WAKEUP"

    invoke-direct {v0, v6, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, Lwa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const/4 v6, 0x5

    const-string v7, "KERNEL_WAKEUP_MINOR"

    invoke-direct {v0, v7, v6}, <init>(Ljava/lang/String;I)V

    sput-object v0, oxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const/4 v7, 0x6

    const-string v8, "SINGAL_BAD"

    invoke-direct {v0, v8, v7}, <init>(Ljava/lang/String;I)V

    sput-object v0, Mwa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const/4 v8, 0x7

    const-string v9, "SINGAL_BAD_MINOR"

    invoke-direct {v0, v9, v8}, <init>(Ljava/lang/String;I)V

    sput-object v0, pxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const/16 v9, 0x8

    const-string v10, "HIGH_UNACCOUNTED"

    invoke-direct {v0, v10, v9}, <init>(Ljava/lang/String;I)V

    sput-object v0, Nwa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const/16 v10, 0x9

    const-string v11, "HIGH_UNACCOUNTED_MINOR"

    invoke-direct {v0, v11, v10}, <init>(Ljava/lang/String;I)V

    sput-object v0, qxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const/16 v11, 0xa

    const-string v12, "AVERAGE_CURRENT_EXCEED_FOR_MINOR"

    invoke-direct {v0, v12, v11}, <init>(Ljava/lang/String;I)V

    sput-object v0, rxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const/16 v12, 0xb

    const-string v13, "RPM_TIME_SINCE_LAST_MODE_SEC"

    invoke-direct {v0, v13, v12}, <init>(Ljava/lang/String;I)V

    sput-object v0, sxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const/16 v13, 0xc

    const-string v14, "SLEEP_ACC_DURATION_DIFF_PERCENT"

    invoke-direct {v0, v14, v13}, <init>(Ljava/lang/String;I)V

    sput-object v0, txa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const/16 v14, 0xd

    const-string v15, "SLPI_SLEEP_COUNT_DIFF"

    invoke-direct {v0, v15, v14}, <init>(Ljava/lang/String;I)V

    sput-object v0, uxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const/16 v15, 0xe

    const-string v14, "SIGNAL_NONE"

    invoke-direct {v0, v14, v15}, <init>(Ljava/lang/String;I)V

    sput-object v0, vxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const-string v14, "SIGNAL_NONE_MINOR"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, <init>(Ljava/lang/String;I)V

    sput-object v0, wxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    sget-object v14, Jwa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    aput-object v14, v0, v1

    sget-object v1, mxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Kwa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    aput-object v1, v0, v3

    sget-object v1, nxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lwa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    aput-object v1, v0, v5

    sget-object v1, oxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Mwa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    aput-object v1, v0, v7

    sget-object v1, pxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    aput-object v1, v0, v8

    sget-object v1, Nwa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    aput-object v1, v0, v9

    sget-object v1, qxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    aput-object v1, v0, v10

    sget-object v1, rxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    aput-object v1, v0, v11

    sget-object v1, sxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    aput-object v1, v0, v12

    sget-object v1, txa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    aput-object v1, v0, v13

    sget-object v1, uxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, vxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, wxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, $VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;
    .locals 1

    const-class v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;
    .locals 1

    sget-object v0, $VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v0}, [Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    return-object v0
.end method