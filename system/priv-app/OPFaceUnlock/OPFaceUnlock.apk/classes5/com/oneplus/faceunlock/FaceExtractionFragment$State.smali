.class final enum Lcom/oneplus/faceunlock/FaceExtractionFragment$State;
.super Ljava/lang/Enum;
.source "FaceExtractionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/FaceExtractionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/faceunlock/FaceExtractionFragment$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

.field public static final enum EXTRACTED:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

.field public static final enum EXTRACTING:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

.field public static final enum NEW:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

.field public static final enum PREPARING:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

.field public static final enum READY:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

.field public static final enum RELEASED:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

.field public static final enum RELEASING:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    const-string v1, "EXTRACTED"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, EXTRACTED:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    new-instance v0, Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    const-string v1, "EXTRACTING"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, EXTRACTING:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    new-instance v0, Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, NEW:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    new-instance v0, Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    const-string v1, "PREPARING"

    invoke-direct {v0, v1, v6}, <init>(Ljava/lang/String;I)V

    sput-object v0, PREPARING:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    new-instance v0, Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    const-string v1, "READY"

    invoke-direct {v0, v1, v7}, <init>(Ljava/lang/String;I)V

    sput-object v0, READY:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    new-instance v0, Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    const-string v1, "RELEASED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, RELEASED:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    new-instance v0, Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    const-string v1, "RELEASING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, RELEASING:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    sget-object v1, EXTRACTED:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    aput-object v1, v0, v3

    sget-object v1, EXTRACTING:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    aput-object v1, v0, v4

    sget-object v1, NEW:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    aput-object v1, v0, v5

    sget-object v1, PREPARING:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    aput-object v1, v0, v6

    sget-object v1, READY:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, RELEASED:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, RELEASING:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/faceunlock/FaceExtractionFragment$State;
    .locals 1

    const-class v0, Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/faceunlock/FaceExtractionFragment$State;
    .locals 1

    sget-object v0, $VALUES:[Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    invoke-virtual {v0}, [Lcom/oneplus/faceunlock/FaceExtractionFragment$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    return-object v0
.end method
