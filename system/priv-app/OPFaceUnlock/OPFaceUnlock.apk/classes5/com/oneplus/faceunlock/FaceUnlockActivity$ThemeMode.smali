.class public final enum Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;
.super Ljava/lang/Enum;
.source "FaceUnlockActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/FaceUnlockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThemeMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

.field public static final enum DARK:Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

.field public static final enum DEFAULT:Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

.field public static final enum LIGHT:Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

    const-string v1, "DARK"

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, DARK:Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

    new-instance v0, Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, DEFAULT:Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

    new-instance v0, Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

    const-string v1, "LIGHT"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, LIGHT:Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

    sget-object v1, DARK:Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

    aput-object v1, v0, v2

    sget-object v1, DEFAULT:Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

    aput-object v1, v0, v3

    sget-object v1, LIGHT:Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

    aput-object v1, v0, v4

    sput-object v0, $VALUES:[Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;
    .locals 1

    const-class v0, Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;
    .locals 1

    sget-object v0, $VALUES:[Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

    invoke-virtual {v0}, [Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

    return-object v0
.end method
