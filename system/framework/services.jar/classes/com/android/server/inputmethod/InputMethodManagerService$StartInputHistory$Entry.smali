.class final Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field mClientBindSequenceNumber:I

.field mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field mImeDisplayId:I

.field mImeId:Ljava/lang/String;

.field mImeTokenString:Ljava/lang/String;

.field mImeUserId:I

.field mRestarting:Z

.field mSequenceNumber:I

.field mStartInputReason:I

.field mTargetDisplayId:I

.field mTargetUserId:I

.field mTargetWindowSoftInputMode:I

.field mTargetWindowString:Ljava/lang/String;

.field mTimestamp:J

.field mWallTime:J


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, set(Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;)V

    return-void
.end method


# virtual methods
.method set(Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;)V
    .locals 2

    iget v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mSequenceNumber:I

    iput v0, p0, mSequenceNumber:I

    iget-wide v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mTimestamp:J

    iput-wide v0, p0, mTimestamp:J

    iget-wide v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mWallTime:J

    iput-wide v0, p0, mWallTime:J

    iget v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mImeUserId:I

    iput v0, p0, mImeUserId:I

    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mImeToken:Landroid/os/IBinder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mImeTokenString:Ljava/lang/String;

    iget v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mImeDisplayId:I

    iput v0, p0, mImeDisplayId:I

    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mImeId:Ljava/lang/String;

    iput-object v0, p0, mImeId:Ljava/lang/String;

    iget v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mStartInputReason:I

    iput v0, p0, mStartInputReason:I

    iget-boolean v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mRestarting:Z

    iput-boolean v0, p0, mRestarting:Z

    iget v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mTargetUserId:I

    iput v0, p0, mTargetUserId:I

    iget v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mTargetDisplayId:I

    iput v0, p0, mTargetDisplayId:I

    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mTargetWindow:Landroid/os/IBinder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mTargetWindowString:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iput-object v0, p0, mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mTargetWindowSoftInputMode:I

    iput v0, p0, mTargetWindowSoftInputMode:I

    iget v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mClientBindSequenceNumber:I

    iput v0, p0, mClientBindSequenceNumber:I

    return-void
.end method
