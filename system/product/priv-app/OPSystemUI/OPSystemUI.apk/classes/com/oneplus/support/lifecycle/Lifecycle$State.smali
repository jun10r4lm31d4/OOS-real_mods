.class public final enum Lcom/oneplus/support/lifecycle/Lifecycle$State;
.super Ljava/lang/Enum;
.source "Lifecycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/lifecycle/Lifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oneplus/support/lifecycle/Lifecycle$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/support/lifecycle/Lifecycle$State;

.field public static final enum CREATED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

.field public static final enum DESTROYED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

.field public static final enum INITIALIZED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

.field public static final enum RESUMED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

.field public static final enum STARTED:Lcom/oneplus/support/lifecycle/Lifecycle$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/oneplus/support/lifecycle/Lifecycle$State;

    const/4 v1, 0x0

    const-string v2, "DESTROYED"

    invoke-direct {v0, v2, v1}, <init>(Ljava/lang/String;I)V

    sput-object v0, DESTROYED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    new-instance v0, Lcom/oneplus/support/lifecycle/Lifecycle$State;

    const/4 v2, 0x1

    const-string v3, "INITIALIZED"

    invoke-direct {v0, v3, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, INITIALIZED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    new-instance v0, Lcom/oneplus/support/lifecycle/Lifecycle$State;

    const/4 v3, 0x2

    const-string v4, "CREATED"

    invoke-direct {v0, v4, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, CREATED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    new-instance v0, Lcom/oneplus/support/lifecycle/Lifecycle$State;

    const/4 v4, 0x3

    const-string v5, "STARTED"

    invoke-direct {v0, v5, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, STARTED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    new-instance v0, Lcom/oneplus/support/lifecycle/Lifecycle$State;

    const/4 v5, 0x4

    const-string v6, "RESUMED"

    invoke-direct {v0, v6, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, RESUMED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oneplus/support/lifecycle/Lifecycle$State;

    sget-object v6, DESTROYED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    aput-object v6, v0, v1

    sget-object v1, INITIALIZED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    aput-object v1, v0, v2

    sget-object v1, CREATED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    aput-object v1, v0, v3

    sget-object v1, STARTED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    aput-object v1, v0, v4

    sget-object v1, RESUMED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    aput-object v1, v0, v5

    sput-object v0, $VALUES:[Lcom/oneplus/support/lifecycle/Lifecycle$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/support/lifecycle/Lifecycle$State;
    .locals 1

    const-class v0, Lcom/oneplus/support/lifecycle/Lifecycle$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oneplus/support/lifecycle/Lifecycle$State;

    return-object p0
.end method

.method public static values()[Lcom/oneplus/support/lifecycle/Lifecycle$State;
    .locals 1

    sget-object v0, $VALUES:[Lcom/oneplus/support/lifecycle/Lifecycle$State;

    invoke-virtual {v0}, [Lcom/oneplus/support/lifecycle/Lifecycle$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/support/lifecycle/Lifecycle$State;

    return-object v0
.end method


# virtual methods
.method public isAtLeast(Lcom/oneplus/support/lifecycle/Lifecycle$State;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
