.class final enum Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;
.super Ljava/lang/Enum;
.source "FaceExtractionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/FaceExtractionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "VisibilityState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

.field public static final enum ANIMATION_IN:Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

.field public static final enum ANIMATION_OUT:Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

.field public static final enum INVISIBLE:Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

.field public static final enum VISIBLE:Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

    const-string v1, "ANIMATION_IN"

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, ANIMATION_IN:Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

    new-instance v0, Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

    const-string v1, "ANIMATION_OUT"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, ANIMATION_OUT:Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

    new-instance v0, Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

    const-string v1, "INVISIBLE"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, INVISIBLE:Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

    new-instance v0, Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

    const-string v1, "VISIBLE"

    invoke-direct {v0, v1, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, VISIBLE:Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

    sget-object v1, ANIMATION_IN:Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

    aput-object v1, v0, v2

    sget-object v1, ANIMATION_OUT:Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

    aput-object v1, v0, v3

    sget-object v1, INVISIBLE:Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

    aput-object v1, v0, v4

    sget-object v1, VISIBLE:Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

    aput-object v1, v0, v5

    sput-object v0, $VALUES:[Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;
    .locals 1

    const-class v0, Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;
    .locals 1

    sget-object v0, $VALUES:[Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

    invoke-virtual {v0}, [Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

    return-object v0
.end method
