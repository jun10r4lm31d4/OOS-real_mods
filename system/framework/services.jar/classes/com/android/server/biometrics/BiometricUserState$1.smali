.class Lcom/android/server/biometrics/BiometricUserState$1;
.super Ljava/lang/Object;
.source "BiometricUserState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricUserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/BiometricUserState;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/BiometricUserState;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/biometrics/BiometricUserState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, this$0:Lcom/android/server/biometrics/BiometricUserState;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricUserState;->doWriteState()V

    return-void
.end method
