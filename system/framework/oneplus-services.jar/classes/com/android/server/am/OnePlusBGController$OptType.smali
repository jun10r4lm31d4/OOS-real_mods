.class public final enum Lcom/android/server/am/OnePlusBGController$OptType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OptType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/OnePlusBGController$OptType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/am/OnePlusBGController$OptType;

.field public static final enum N:Lcom/android/server/am/OnePlusBGController$OptType;

.field public static final enum O:Lcom/android/server/am/OnePlusBGController$OptType;

.field public static final enum S:Lcom/android/server/am/OnePlusBGController$OptType;


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/server/am/OnePlusBGController$OptType;

    const/4 v1, 0x0

    const-string v2, "S"

    const-string v3, "SMART"

    invoke-direct {v0, v2, v1, v3}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, S:Lcom/android/server/am/OnePlusBGController$OptType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$OptType;

    const/4 v2, 0x1

    const-string v3, "N"

    const-string v4, "FORCE_NOT_OPT"

    invoke-direct {v0, v3, v2, v4}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, N:Lcom/android/server/am/OnePlusBGController$OptType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$OptType;

    const/4 v3, 0x2

    const-string v4, "O"

    const-string v5, "FORCE_OPT"

    invoke-direct {v0, v4, v3, v5}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, O:Lcom/android/server/am/OnePlusBGController$OptType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/am/OnePlusBGController$OptType;

    sget-object v4, S:Lcom/android/server/am/OnePlusBGController$OptType;

    aput-object v4, v0, v1

    sget-object v1, N:Lcom/android/server/am/OnePlusBGController$OptType;

    aput-object v1, v0, v2

    sget-object v1, O:Lcom/android/server/am/OnePlusBGController$OptType;

    aput-object v1, v0, v3

    sput-object v0, $VALUES:[Lcom/android/server/am/OnePlusBGController$OptType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, text:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/server/am/OnePlusBGController$OptType;
    .locals 5

    if-eqz p0, :cond_1

    invoke-static {}, values()[Lcom/android/server/am/OnePlusBGController$OptType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, text:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/OnePlusBGController$OptType;
    .locals 1

    const-class v0, Lcom/android/server/am/OnePlusBGController$OptType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/OnePlusBGController$OptType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/OnePlusBGController$OptType;
    .locals 1

    sget-object v0, $VALUES:[Lcom/android/server/am/OnePlusBGController$OptType;

    invoke-virtual {v0}, [Lcom/android/server/am/OnePlusBGController$OptType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/OnePlusBGController$OptType;

    return-object v0
.end method
