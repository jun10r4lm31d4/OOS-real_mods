.class public final enum Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;
.super Ljava/lang/Enum;
.source "FaceDetectionData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/camera/FaceDetectionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FaceDetectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;

.field public static final enum CAMERA_FD_PREVIEW:Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;

.field public static final enum CAMERA_FD_SNAPSHOT:Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;

.field public static final enum UNKNOWN:Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;

    const-string v1, "CAMERA_FD_PREVIEW"

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, CAMERA_FD_PREVIEW:Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;

    new-instance v0, Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;

    const-string v1, "CAMERA_FD_SNAPSHOT"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, CAMERA_FD_SNAPSHOT:Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;

    new-instance v0, Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, UNKNOWN:Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;

    sget-object v1, CAMERA_FD_PREVIEW:Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;

    aput-object v1, v0, v2

    sget-object v1, CAMERA_FD_SNAPSHOT:Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;

    aput-object v1, v0, v3

    sget-object v1, UNKNOWN:Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;

    aput-object v1, v0, v4

    sput-object v0, $VALUES:[Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;
    .locals 1

    const-class v0, Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;
    .locals 1

    sget-object v0, $VALUES:[Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;

    invoke-virtual {v0}, [Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;

    return-object v0
.end method
