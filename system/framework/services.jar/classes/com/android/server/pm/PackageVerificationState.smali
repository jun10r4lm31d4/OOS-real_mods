.class Lcom/android/server/pm/PackageVerificationState;
.super Ljava/lang/Object;
.source "PackageVerificationState.java"


# instance fields
.field private mExtendedTimeout:Z

.field private mHasOptionalVerifier:Z

.field private mOptionalVerificationComplete:Z

.field private mOptionalVerificationPassed:Z

.field private mOptionalVerifierUid:I

.field private final mParams:Lcom/android/server/pm/PackageManagerService$InstallParams;

.field private mRequiredVerificationComplete:Z

.field private mRequiredVerificationPassed:Z

.field private final mRequiredVerifierUid:I

.field private mSufficientVerificationComplete:Z

.field private mSufficientVerificationPassed:Z

.field private final mSufficientVerifierUids:Landroid/util/SparseBooleanArray;


# direct methods
.method constructor <init>(ILcom/android/server/pm/PackageManagerService$InstallParams;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, mRequiredVerifierUid:I

    iput-object p2, p0, mParams:Lcom/android/server/pm/PackageManagerService$InstallParams;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, mExtendedTimeout:Z

    return-void
.end method


# virtual methods
.method public addOptionalVerifier(I)V
    .locals 1

    iput p1, p0, mOptionalVerifierUid:I

    const/4 v0, 0x1

    iput-boolean v0, p0, mHasOptionalVerifier:Z

    return-void
.end method

.method addSufficientVerifier(I)V
    .locals 2

    iget-object v0, p0, mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method extendTimeout()V
    .locals 1

    iget-boolean v0, p0, mExtendedTimeout:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, mExtendedTimeout:Z

    :cond_0
    return-void
.end method

.method getInstallParams()Lcom/android/server/pm/PackageManagerService$InstallParams;
    .locals 1

    iget-object v0, p0, mParams:Lcom/android/server/pm/PackageManagerService$InstallParams;

    return-object v0
.end method

.method isInstallAllowed()Z
    .locals 3

    iget v0, p0, mRequiredVerifierUid:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, mRequiredVerificationPassed:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, mHasOptionalVerifier:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, mOptionalVerificationPassed:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, mSufficientVerificationComplete:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, mSufficientVerificationPassed:Z

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method isVerificationComplete()Z
    .locals 3

    iget v0, p0, mRequiredVerifierUid:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, mRequiredVerificationComplete:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, mHasOptionalVerifier:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, mOptionalVerificationComplete:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    iget-boolean v0, p0, mSufficientVerificationComplete:Z

    return v0
.end method

.method setVerifierResponse(II)Z
    .locals 3

    iget v0, p0, mRequiredVerifierUid:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    iput-boolean v2, p0, mRequiredVerificationComplete:Z

    if-eq p2, v2, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    iput-boolean v1, p0, mRequiredVerificationPassed:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    :cond_1
    iput-boolean v2, p0, mRequiredVerificationPassed:Z

    nop

    :goto_0
    return v2

    :cond_2
    iget-boolean v0, p0, mHasOptionalVerifier:Z

    if-eqz v0, :cond_4

    iget v0, p0, mOptionalVerifierUid:I

    if-ne p1, v0, :cond_4

    iput-boolean v2, p0, mOptionalVerificationComplete:Z

    if-eq p2, v2, :cond_3

    iput-boolean v1, p0, mOptionalVerificationPassed:Z

    goto :goto_1

    :cond_3
    iput-boolean v2, p0, mOptionalVerificationPassed:Z

    nop

    :goto_1
    return v2

    :cond_4
    iget-object v0, p0, mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_7

    if-ne p2, v2, :cond_5

    iput-boolean v2, p0, mSufficientVerificationComplete:Z

    iput-boolean v2, p0, mSufficientVerificationPassed:Z

    :cond_5
    iget-object v0, p0, mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v0, p0, mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_6

    iput-boolean v2, p0, mSufficientVerificationComplete:Z

    :cond_6
    return v2

    :cond_7
    return v1
.end method

.method timeoutExtended()Z
    .locals 1

    iget-boolean v0, p0, mExtendedTimeout:Z

    return v0
.end method
