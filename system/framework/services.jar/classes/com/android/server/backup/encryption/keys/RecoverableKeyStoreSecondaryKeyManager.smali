.class public Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKeyManager;
.super Ljava/lang/Object;
.source "RecoverableKeyStoreSecondaryKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKeyManager$RecoverableKeyStoreSecondaryKeyManagerProvider;
    }
.end annotation


# static fields
.field private static final BACKUP_KEY_ALIAS_PREFIX:Ljava/lang/String; = "com.android.server.backup/recoverablekeystore/"

.field private static final BACKUP_KEY_SUFFIX_LENGTH_BITS:I = 0x80

.field private static final BITS_PER_BYTE:I = 0x8


# instance fields
.field private final mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

.field private final mSecureRandom:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Landroid/security/keystore/recovery/RecoveryController;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    iput-object p2, p0, mSecureRandom:Ljava/security/SecureRandom;

    return-void
.end method

.method private generateId()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [B

    iget-object v1, p0, mSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.android.server.backup/recoverablekeystore/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/ByteStringUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKeyManager;
    .locals 3

    new-instance v0, Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKeyManager;

    invoke-static {p0}, Landroid/security/keystore/recovery/RecoveryController;->getInstance(Landroid/content/Context;)Landroid/security/keystore/recovery/RecoveryController;

    move-result-object v1

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v0, v1, v2}, <init>(Landroid/security/keystore/recovery/RecoveryController;Ljava/security/SecureRandom;)V

    return-object v0
.end method

.method static synthetic lambda$get$0(Ljava/lang/String;Ljavax/crypto/SecretKey;)Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey;
    .locals 1

    new-instance v0, Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey;

    invoke-direct {v0, p0, p1}, Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey;-><init>(Ljava/lang/String;Ljavax/crypto/SecretKey;)V

    return-object v0
.end method


# virtual methods
.method public generate()Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;,
            Landroid/security/keystore/recovery/LockScreenRequiredException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    invoke-direct {p0}, generateId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    invoke-virtual {v1, v0}, Landroid/security/keystore/recovery/RecoveryController;->generateKey(Ljava/lang/String;)Ljava/security/Key;

    iget-object v1, p0, mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    invoke-virtual {v1, v0}, Landroid/security/keystore/recovery/RecoveryController;->getKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v1

    check-cast v1, Ljavax/crypto/SecretKey;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey;

    invoke-direct {v2, v0, v1}, Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey;-><init>(Ljava/lang/String;Ljavax/crypto/SecretKey;)V

    return-object v2

    :cond_0
    new-instance v2, Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v4, "Generated key %s but could not get it back immediately afterwards."

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/security/keystore/recovery/InternalRecoveryServiceException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public get(Ljava/lang/String;)Ljava/util/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    iget-object v0, p0, mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    invoke-virtual {v0, p1}, Landroid/security/keystore/recovery/RecoveryController;->getKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/server/backup/encryption/keys/-$$Lambda$RecoverableKeyStoreSecondaryKeyManager$e3XnfsZLX7gDR6_HV8RXEgR851s;

    invoke-direct {v2, p1}, Lcom/android/server/backup/encryption/keys/-$$Lambda$RecoverableKeyStoreSecondaryKeyManager$e3XnfsZLX7gDR6_HV8RXEgR851s;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    iget-object v0, p0, mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    invoke-virtual {v0, p1}, Landroid/security/keystore/recovery/RecoveryController;->removeKey(Ljava/lang/String;)V

    return-void
.end method
