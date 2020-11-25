.class public final enum Lcom/android/server/am/OnePlusBGController$PersistType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PersistType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/OnePlusBGController$PersistType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/am/OnePlusBGController$PersistType;

.field public static final enum vwa:Lcom/android/server/am/OnePlusBGController$PersistType;

.field public static final enum wwa:Lcom/android/server/am/OnePlusBGController$PersistType;

.field public static final enum xwa:Lcom/android/server/am/OnePlusBGController$PersistType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/server/am/OnePlusBGController$PersistType;

    const/4 v1, 0x0

    const-string v2, "NOT_AVAILABLE"

    invoke-direct {v0, v2, v1}, <init>(Ljava/lang/String;I)V

    sput-object v0, vwa:Lcom/android/server/am/OnePlusBGController$PersistType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$PersistType;

    const/4 v2, 0x1

    const-string v3, "LOCAL_FOLDER"

    invoke-direct {v0, v3, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, wwa:Lcom/android/server/am/OnePlusBGController$PersistType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$PersistType;

    const/4 v3, 0x2

    const-string v4, "HISTORY_FOLDER"

    invoke-direct {v0, v4, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, xwa:Lcom/android/server/am/OnePlusBGController$PersistType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/am/OnePlusBGController$PersistType;

    sget-object v4, vwa:Lcom/android/server/am/OnePlusBGController$PersistType;

    aput-object v4, v0, v1

    sget-object v1, wwa:Lcom/android/server/am/OnePlusBGController$PersistType;

    aput-object v1, v0, v2

    sget-object v1, xwa:Lcom/android/server/am/OnePlusBGController$PersistType;

    aput-object v1, v0, v3

    sput-object v0, $VALUES:[Lcom/android/server/am/OnePlusBGController$PersistType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/OnePlusBGController$PersistType;
    .locals 1

    const-class v0, Lcom/android/server/am/OnePlusBGController$PersistType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/OnePlusBGController$PersistType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/OnePlusBGController$PersistType;
    .locals 1

    sget-object v0, $VALUES:[Lcom/android/server/am/OnePlusBGController$PersistType;

    invoke-virtual {v0}, [Lcom/android/server/am/OnePlusBGController$PersistType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/OnePlusBGController$PersistType;

    return-object v0
.end method
