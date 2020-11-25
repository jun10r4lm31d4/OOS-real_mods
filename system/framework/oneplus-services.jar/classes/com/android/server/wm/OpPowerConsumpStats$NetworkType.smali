.class public final enum Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpPowerConsumpStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

.field public static final enum CELLULAR:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

.field public static final enum Hza:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

.field public static final enum WIFI:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;


# instance fields
.field private id:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    const/4 v1, 0x0

    const-string v2, "WIFI"

    invoke-direct {v0, v2, v1, v1}, <init>(Ljava/lang/String;II)V

    sput-object v0, WIFI:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    const/4 v2, 0x1

    const-string v3, "CELLULAR"

    invoke-direct {v0, v3, v2, v2}, <init>(Ljava/lang/String;II)V

    sput-object v0, CELLULAR:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    const/4 v3, 0x2

    const-string v4, "NO_NETWORK"

    invoke-direct {v0, v4, v3, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, Hza:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    sget-object v4, WIFI:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    aput-object v4, v0, v1

    sget-object v1, CELLULAR:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    aput-object v1, v0, v2

    sget-object v1, Hza:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    aput-object v1, v0, v3

    sput-object v0, $VALUES:[Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

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

.method public static fromValue(I)Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;
    .locals 5

    invoke-static {}, values()[Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;
    .locals 1

    const-class v0, Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;
    .locals 1

    sget-object v0, $VALUES:[Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    invoke-virtual {v0}, [Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    return-object v0
.end method
