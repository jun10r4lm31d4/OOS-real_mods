.class final enum Landroid/net/util/SharedLog$Category;
.super Ljava/lang/Enum;
.source "SharedLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/util/SharedLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/net/util/SharedLog$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/util/SharedLog$Category;

.field public static final enum ERROR:Landroid/net/util/SharedLog$Category;

.field public static final enum MARK:Landroid/net/util/SharedLog$Category;

.field public static final enum NONE:Landroid/net/util/SharedLog$Category;

.field public static final enum WARN:Landroid/net/util/SharedLog$Category;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroid/net/util/SharedLog$Category;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, <init>(Ljava/lang/String;I)V

    sput-object v0, NONE:Landroid/net/util/SharedLog$Category;

    new-instance v0, Landroid/net/util/SharedLog$Category;

    const/4 v2, 0x1

    const-string v3, "ERROR"

    invoke-direct {v0, v3, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, ERROR:Landroid/net/util/SharedLog$Category;

    new-instance v0, Landroid/net/util/SharedLog$Category;

    const/4 v3, 0x2

    const-string v4, "MARK"

    invoke-direct {v0, v4, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, MARK:Landroid/net/util/SharedLog$Category;

    new-instance v0, Landroid/net/util/SharedLog$Category;

    const/4 v4, 0x3

    const-string v5, "WARN"

    invoke-direct {v0, v5, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, WARN:Landroid/net/util/SharedLog$Category;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/net/util/SharedLog$Category;

    sget-object v5, NONE:Landroid/net/util/SharedLog$Category;

    aput-object v5, v0, v1

    sget-object v1, ERROR:Landroid/net/util/SharedLog$Category;

    aput-object v1, v0, v2

    sget-object v1, MARK:Landroid/net/util/SharedLog$Category;

    aput-object v1, v0, v3

    sget-object v1, WARN:Landroid/net/util/SharedLog$Category;

    aput-object v1, v0, v4

    sput-object v0, $VALUES:[Landroid/net/util/SharedLog$Category;

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

.method public static valueOf(Ljava/lang/String;)Landroid/net/util/SharedLog$Category;
    .locals 1

    const-class v0, Landroid/net/util/SharedLog$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/util/SharedLog$Category;

    return-object v0
.end method

.method public static values()[Landroid/net/util/SharedLog$Category;
    .locals 1

    sget-object v0, $VALUES:[Landroid/net/util/SharedLog$Category;

    invoke-virtual {v0}, [Landroid/net/util/SharedLog$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/util/SharedLog$Category;

    return-object v0
.end method
