.class public final enum Lcom/oneplus/faceunlock/utils/OperationResult;
.super Ljava/lang/Enum;
.source "OperationResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/faceunlock/utils/OperationResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/faceunlock/utils/OperationResult;

.field public static final enum FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

.field public static final enum SUCCESS:Lcom/oneplus/faceunlock/utils/OperationResult;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/oneplus/faceunlock/utils/OperationResult;

    const-string v1, "FAIL"

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    new-instance v0, Lcom/oneplus/faceunlock/utils/OperationResult;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, SUCCESS:Lcom/oneplus/faceunlock/utils/OperationResult;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oneplus/faceunlock/utils/OperationResult;

    sget-object v1, FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    aput-object v1, v0, v2

    sget-object v1, SUCCESS:Lcom/oneplus/faceunlock/utils/OperationResult;

    aput-object v1, v0, v3

    sput-object v0, $VALUES:[Lcom/oneplus/faceunlock/utils/OperationResult;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/faceunlock/utils/OperationResult;
    .locals 1

    const-class v0, Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/faceunlock/utils/OperationResult;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/faceunlock/utils/OperationResult;
    .locals 1

    sget-object v0, $VALUES:[Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-virtual {v0}, [Lcom/oneplus/faceunlock/utils/OperationResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/faceunlock/utils/OperationResult;

    return-object v0
.end method
