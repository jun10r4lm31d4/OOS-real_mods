.class public final enum Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpPowerConsumpStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PurposeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

.field public static final enum Iza:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

.field public static final enum Jza:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

.field public static final enum Kza:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

.field public static final enum NORMAL:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1}, <init>(Ljava/lang/String;I)V

    sput-object v0, NORMAL:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    const/4 v2, 0x1

    const-string v3, "FORCLEAN"

    invoke-direct {v0, v3, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, Iza:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    const/4 v3, 0x2

    const-string v4, "DUMMY_START"

    invoke-direct {v0, v4, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, Jza:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    const/4 v4, 0x3

    const-string v5, "DUMMY_STOP"

    invoke-direct {v0, v5, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, Kza:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    sget-object v5, NORMAL:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    aput-object v5, v0, v1

    sget-object v1, Iza:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    aput-object v1, v0, v2

    sget-object v1, Jza:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    aput-object v1, v0, v3

    sget-object v1, Kza:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    aput-object v1, v0, v4

    sput-object v0, $VALUES:[Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;
    .locals 1

    const-class v0, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;
    .locals 1

    sget-object v0, $VALUES:[Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    invoke-virtual {v0}, [Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    return-object v0
.end method
