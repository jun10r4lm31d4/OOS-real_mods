.class public final enum Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/OemSceneVibrationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VibrationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

.field public static final enum BASE:Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

.field public static final enum Mza:Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

.field public static final enum Nza:Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

    const/4 v1, 0x0

    const-string v2, "ALLOW_ALL"

    invoke-direct {v0, v2, v1}, <init>(Ljava/lang/String;I)V

    sput-object v0, Mza:Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

    const/4 v2, 0x1

    const-string v3, "ALLOW_WHITE"

    invoke-direct {v0, v3, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, Nza:Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

    const/4 v3, 0x2

    const-string v4, "BASE"

    invoke-direct {v0, v4, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, BASE:Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

    sget-object v4, Mza:Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

    aput-object v4, v0, v1

    sget-object v1, Nza:Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

    aput-object v1, v0, v2

    sget-object v1, BASE:Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

    aput-object v1, v0, v3

    sput-object v0, $VALUES:[Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;
    .locals 1

    const-class v0, Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

    return-object p0
.end method

.method public static values()[Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;
    .locals 1

    sget-object v0, $VALUES:[Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

    invoke-virtual {v0}, [Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

    return-object v0
.end method
