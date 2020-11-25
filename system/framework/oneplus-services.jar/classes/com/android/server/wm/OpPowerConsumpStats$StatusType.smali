.class public final enum Lcom/android/server/wm/OpPowerConsumpStats$StatusType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpPowerConsumpStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StatusType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/wm/OpPowerConsumpStats$StatusType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

.field public static final enum BG:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

.field public static final enum TOP:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;


# instance fields
.field private id:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    const/4 v1, 0x0

    const-string v2, "BG"

    invoke-direct {v0, v2, v1, v1}, <init>(Ljava/lang/String;II)V

    sput-object v0, BG:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    const/4 v2, 0x1

    const-string v3, "TOP"

    invoke-direct {v0, v3, v2, v2}, <init>(Ljava/lang/String;II)V

    sput-object v0, TOP:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    sget-object v3, BG:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    aput-object v3, v0, v1

    sget-object v1, TOP:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    aput-object v1, v0, v2

    sput-object v0, $VALUES:[Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, id:I

    return-void
.end method

.method public static fromValue(I)Lcom/android/server/wm/OpPowerConsumpStats$StatusType;
    .locals 5

    invoke-static {}, values()[Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, id:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wm/OpPowerConsumpStats$StatusType;
    .locals 1

    const-class v0, Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/wm/OpPowerConsumpStats$StatusType;
    .locals 1

    sget-object v0, $VALUES:[Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    invoke-virtual {v0}, [Lcom/android/server/wm/OpPowerConsumpStats$StatusType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    return-object v0
.end method
