.class final enum Lcom/oneplus/faceunlock/camera/CameraDevice$State;
.super Ljava/lang/Enum;
.source "CameraDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/camera/CameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/faceunlock/camera/CameraDevice$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/faceunlock/camera/CameraDevice$State;

.field public static final enum INITIALIZED:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

.field public static final enum INITIALIZING:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

.field public static final enum NEW:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

.field public static final enum RELEASED:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

.field public static final enum RELEASING:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

.field public static final enum STARTED:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

.field public static final enum STARTING:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

.field public static final enum STOPPED:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

.field public static final enum STOPPING:Lcom/oneplus/faceunlock/camera/CameraDevice$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, INITIALIZED:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    new-instance v0, Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    const-string v1, "INITIALIZING"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, INITIALIZING:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    new-instance v0, Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, NEW:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    new-instance v0, Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    const-string v1, "RELEASED"

    invoke-direct {v0, v1, v6}, <init>(Ljava/lang/String;I)V

    sput-object v0, RELEASED:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    new-instance v0, Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    const-string v1, "RELEASING"

    invoke-direct {v0, v1, v7}, <init>(Ljava/lang/String;I)V

    sput-object v0, RELEASING:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    new-instance v0, Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    const-string v1, "STARTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, STARTED:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    new-instance v0, Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    const-string v1, "STARTING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, STARTING:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    new-instance v0, Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    const-string v1, "STOPPED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, STOPPED:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    new-instance v0, Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    const-string v1, "STOPPING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, STOPPING:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    sget-object v1, INITIALIZED:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    aput-object v1, v0, v3

    sget-object v1, INITIALIZING:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    aput-object v1, v0, v4

    sget-object v1, NEW:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    aput-object v1, v0, v5

    sget-object v1, RELEASED:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    aput-object v1, v0, v6

    sget-object v1, RELEASING:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, STARTED:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, STARTING:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, STOPPED:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, STOPPING:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Lcom/oneplus/faceunlock/camera/CameraDevice$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/faceunlock/camera/CameraDevice$State;
    .locals 1

    const-class v0, Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/faceunlock/camera/CameraDevice$State;
    .locals 1

    sget-object v0, $VALUES:[Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    invoke-virtual {v0}, [Lcom/oneplus/faceunlock/camera/CameraDevice$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    return-object v0
.end method
