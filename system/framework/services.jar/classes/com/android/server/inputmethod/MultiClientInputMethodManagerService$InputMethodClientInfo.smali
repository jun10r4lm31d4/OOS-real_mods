.class final Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
.super Ljava/lang/Object;
.source "MultiClientInputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputMethodClientInfo"
.end annotation


# instance fields
.field mBindingSequence:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "PerUserData.mLock"
        }
    .end annotation
.end field

.field final mClient:Lcom/android/internal/view/IInputMethodClient;

.field final mClientId:I

.field mInputMethodSession:Lcom/android/internal/view/IInputMethodSession;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "PerUserData.mLock"
        }
    .end annotation
.end field

.field mMSInputMethodSession:Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "PerUserData.mLock"
        }
    .end annotation
.end field

.field final mPid:I

.field final mSelfReportedDisplayId:I

.field mState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "PerUserData.mLock"
        }
    .end annotation
.end field

.field final mUid:I

.field final mWindowMap:Ljava/util/WeakHashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "PerUserData.mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWriteChannel:Landroid/view/InputChannel;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "PerUserData.mLock"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/internal/view/IInputMethodClient;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, mWindowMap:Ljava/util/WeakHashMap;

    iput-object p1, p0, mClient:Lcom/android/internal/view/IInputMethodClient;

    iput p2, p0, mUid:I

    iput p3, p0, mPid:I

    iput p4, p0, mSelfReportedDisplayId:I

    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientIdSource;->getNext()I

    move-result v0

    iput v0, p0, mClientId:I

    return-void
.end method


# virtual methods
.method dumpLocked(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "PerUserData.mLock"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mBindingSequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mBindingSequence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mWriteChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, mWriteChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mInputMethodSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, mInputMethodSession:Lcom/android/internal/view/IInputMethodSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mMSInputMethodSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, mMSInputMethodSession:Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method