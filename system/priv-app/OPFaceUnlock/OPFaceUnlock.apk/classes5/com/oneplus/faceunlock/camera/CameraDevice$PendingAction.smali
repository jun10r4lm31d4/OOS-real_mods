.class final enum Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;
.super Ljava/lang/Enum;
.source "CameraDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/camera/CameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PendingAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

.field public static final enum EMPTY:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

.field public static final enum RELEASE:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

.field public static final enum START:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

.field public static final enum STOP:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, EMPTY:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    new-instance v0, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    const-string v1, "RELEASE"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, RELEASE:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    new-instance v0, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    const-string v1, "START"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, START:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    new-instance v0, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, STOP:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    sget-object v1, EMPTY:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    aput-object v1, v0, v2

    sget-object v1, RELEASE:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    aput-object v1, v0, v3

    sget-object v1, START:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    aput-object v1, v0, v4

    sget-object v1, STOP:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    aput-object v1, v0, v5

    sput-object v0, $VALUES:[Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;
    .locals 1

    const-class v0, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;
    .locals 1

    sget-object v0, $VALUES:[Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    invoke-virtual {v0}, [Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    return-object v0
.end method
