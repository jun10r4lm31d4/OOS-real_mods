.class public final enum Lcom/oneplus/faceunlock/engine/FaceEngine$State;
.super Ljava/lang/Enum;
.source "FaceEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/engine/FaceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/faceunlock/engine/FaceEngine$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/faceunlock/engine/FaceEngine$State;

.field public static final enum NEW:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

.field public static final enum PREPARING:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

.field public static final enum READY:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

.field public static final enum RELEASED:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

.field public static final enum RELEASING:Lcom/oneplus/faceunlock/engine/FaceEngine$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, NEW:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    new-instance v0, Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    const-string v1, "PREPARING"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, PREPARING:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    new-instance v0, Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    const-string v1, "READY"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, READY:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    new-instance v0, Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    const-string v1, "RELEASING"

    invoke-direct {v0, v1, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, RELEASING:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    new-instance v0, Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    const-string v1, "RELEASED"

    invoke-direct {v0, v1, v6}, <init>(Ljava/lang/String;I)V

    sput-object v0, RELEASED:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    sget-object v1, NEW:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    aput-object v1, v0, v2

    sget-object v1, PREPARING:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    aput-object v1, v0, v3

    sget-object v1, READY:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    aput-object v1, v0, v4

    sget-object v1, RELEASING:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    aput-object v1, v0, v5

    sget-object v1, RELEASED:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    aput-object v1, v0, v6

    sput-object v0, $VALUES:[Lcom/oneplus/faceunlock/engine/FaceEngine$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/faceunlock/engine/FaceEngine$State;
    .locals 1

    const-class v0, Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/faceunlock/engine/FaceEngine$State;
    .locals 1

    sget-object v0, $VALUES:[Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    invoke-virtual {v0}, [Lcom/oneplus/faceunlock/engine/FaceEngine$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    return-object v0
.end method
