.class final enum Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;
.super Ljava/lang/Enum;
.source "FaceUnlockActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/FaceUnlockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FragmentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

.field public static final enum EMPTY:Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

.field public static final enum FACE_EXTRACTION:Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

.field public static final enum FINISH:Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, EMPTY:Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

    new-instance v0, Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

    const-string v1, "FACE_EXTRACTION"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, FACE_EXTRACTION:Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

    new-instance v0, Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

    const-string v1, "FINISH"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, FINISH:Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

    sget-object v1, EMPTY:Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

    aput-object v1, v0, v2

    sget-object v1, FACE_EXTRACTION:Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

    aput-object v1, v0, v3

    sget-object v1, FINISH:Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

    aput-object v1, v0, v4

    sput-object v0, $VALUES:[Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;
    .locals 1

    const-class v0, Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;
    .locals 1

    sget-object v0, $VALUES:[Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

    invoke-virtual {v0}, [Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

    return-object v0
.end method
