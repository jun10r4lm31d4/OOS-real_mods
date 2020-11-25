.class public final enum Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;
.super Ljava/lang/Enum;
.source "FaceEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/engine/FaceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "StartState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;

.field public static final enum STARTED:Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;

.field public static final enum STARTING:Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;

.field public static final enum STOPPED:Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;

.field public static final enum STOPPING:Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;

    const-string v1, "STARTING"

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, STARTING:Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;

    new-instance v0, Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, STARTED:Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;

    new-instance v0, Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;

    const-string v1, "STOPPING"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, STOPPING:Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;

    new-instance v0, Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, STOPPED:Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;

    sget-object v1, STARTING:Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;

    aput-object v1, v0, v2

    sget-object v1, STARTED:Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;

    aput-object v1, v0, v3

    sget-object v1, STOPPING:Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;

    aput-object v1, v0, v4

    sget-object v1, STOPPED:Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;

    aput-object v1, v0, v5

    sput-object v0, $VALUES:[Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;
    .locals 1

    const-class v0, Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;
    .locals 1

    sget-object v0, $VALUES:[Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;

    invoke-virtual {v0}, [Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;

    return-object v0
.end method
