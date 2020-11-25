.class public final enum Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CRITERIA_S_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

.field public static final enum cxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

.field public static final enum dxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

.field public static final enum exa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

.field public static final enum fxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

.field public static final enum gxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

.field public static final enum hxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

.field public static final enum ixa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

.field public static final enum jxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

.field public static final enum kxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

.field public static final enum lxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    const/4 v1, 0x0

    const-string v2, "WL"

    invoke-direct {v0, v2, v1}, <init>(Ljava/lang/String;I)V

    sput-object v0, cxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    const/4 v2, 0x1

    const-string v3, "KWL"

    invoke-direct {v0, v3, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, dxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    const/4 v3, 0x2

    const-string v4, "WR"

    invoke-direct {v0, v4, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, exa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    const/4 v4, 0x3

    const-string v5, "SB"

    invoke-direct {v0, v5, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, fxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    const/4 v5, 0x4

    const-string v6, "SN"

    invoke-direct {v0, v6, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, gxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    const/4 v6, 0x5

    const-string v7, "HUC"

    invoke-direct {v0, v7, v6}, <init>(Ljava/lang/String;I)V

    sput-object v0, hxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    const/4 v7, 0x6

    const-string v8, "MINOR"

    invoke-direct {v0, v8, v7}, <init>(Ljava/lang/String;I)V

    sput-object v0, ixa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    const/4 v8, 0x7

    const-string v9, "RPM_TSLM_SEC"

    invoke-direct {v0, v9, v8}, <init>(Ljava/lang/String;I)V

    sput-object v0, jxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    const/16 v9, 0x8

    const-string v10, "RPM_SAD"

    invoke-direct {v0, v10, v9}, <init>(Ljava/lang/String;I)V

    sput-object v0, kxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    const/16 v10, 0x9

    const-string v11, "RPM_SLPI_SC"

    invoke-direct {v0, v11, v10}, <init>(Ljava/lang/String;I)V

    sput-object v0, lxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    sget-object v11, cxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    aput-object v11, v0, v1

    sget-object v1, dxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    aput-object v1, v0, v2

    sget-object v1, exa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    aput-object v1, v0, v3

    sget-object v1, fxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    aput-object v1, v0, v4

    sget-object v1, gxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    aput-object v1, v0, v5

    sget-object v1, hxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    aput-object v1, v0, v6

    sget-object v1, ixa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    aput-object v1, v0, v7

    sget-object v1, jxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    aput-object v1, v0, v8

    sget-object v1, kxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    aput-object v1, v0, v9

    sget-object v1, lxa:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    aput-object v1, v0, v10

    sput-object v0, $VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;
    .locals 1

    const-class v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;
    .locals 1

    sget-object v0, $VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v0}, [Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    return-object v0
.end method
