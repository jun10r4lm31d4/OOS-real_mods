.class final enum Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;
.super Ljava/lang/Enum;
.source "SecureBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/recoverablekeystore/SecureBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AesGcmOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

.field public static final enum DECRYPT:Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

.field public static final enum ENCRYPT:Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

    const/4 v1, 0x0

    const-string v2, "ENCRYPT"

    invoke-direct {v0, v2, v1}, <init>(Ljava/lang/String;I)V

    sput-object v0, ENCRYPT:Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

    const/4 v2, 0x1

    const-string v3, "DECRYPT"

    invoke-direct {v0, v3, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, DECRYPT:Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

    sget-object v3, ENCRYPT:Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

    aput-object v3, v0, v1

    sget-object v1, DECRYPT:Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

    aput-object v1, v0, v2

    sput-object v0, $VALUES:[Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;
    .locals 1

    const-class v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

    return-object v0
.end method

.method public static values()[Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;
    .locals 1

    sget-object v0, $VALUES:[Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

    invoke-virtual {v0}, [Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

    return-object v0
.end method
