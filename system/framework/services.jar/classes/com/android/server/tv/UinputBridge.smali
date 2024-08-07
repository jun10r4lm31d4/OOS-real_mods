.class public final Lcom/android/server/tv/UinputBridge;
.super Ljava/lang/Object;
.source "UinputBridge.java"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mPtr:J

.field private mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;III)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, mCloseGuard:Ldalvik/system/CloseGuard;

    const/4 v0, 0x0

    iput-object v0, p0, mToken:Landroid/os/IBinder;

    const/4 v0, 0x1

    if-lt p3, v0, :cond_3

    if-lt p4, v0, :cond_3

    if-lt p5, v0, :cond_2

    const/16 v0, 0x20

    if-gt p5, v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p3, p4, p5}, nativeOpen(Ljava/lang/String;Ljava/lang/String;III)J

    move-result-wide v0

    iput-wide v0, p0, mPtr:J

    iget-wide v0, p0, mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iput-object p1, p0, mToken:Landroid/os/IBinder;

    iget-object v0, p0, mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not open uinput device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Token cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Touchpad must support between 1 and 32 pointers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Touchpad must be at least 1x1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native nativeClear(J)V
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeOpen(Ljava/lang/String;Ljava/lang/String;III)J
.end method

.method private static native nativeSendKey(JIZ)V
.end method

.method private static native nativeSendPointerDown(JIII)V
.end method

.method private static native nativeSendPointerSync(J)V
.end method

.method private static native nativeSendPointerUp(JI)V
.end method

.method private static native nativeSendTimestamp(JJ)V
.end method


# virtual methods
.method public clear(Landroid/os/IBinder;)V
    .locals 2

    invoke-virtual {p0, p1}, isTokenValid(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, mPtr:J

    invoke-static {v0, v1}, nativeClear(J)V

    :cond_0
    return-void
.end method

.method public close(Landroid/os/IBinder;)V
    .locals 4

    invoke-virtual {p0, p1}, isTokenValid(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, clear(Landroid/os/IBinder;)V

    iget-wide v0, p0, mPtr:J

    invoke-static {v0, v1}, nativeClose(J)V

    iput-wide v2, p0, mPtr:J

    iget-object v0, p0, mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v1, :cond_0

    iget-object v1, p0, mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    iget-object v1, p0, mToken:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, close(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, mToken:Landroid/os/IBinder;

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, mToken:Landroid/os/IBinder;

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v1
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method protected isTokenValid(Landroid/os/IBinder;)Z
    .locals 1

    iget-object v0, p0, mToken:Landroid/os/IBinder;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public sendKeyDown(Landroid/os/IBinder;I)V
    .locals 3

    invoke-virtual {p0, p1}, isTokenValid(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, mPtr:J

    const/4 v2, 0x1

    invoke-static {v0, v1, p2, v2}, nativeSendKey(JIZ)V

    :cond_0
    return-void
.end method

.method public sendKeyUp(Landroid/os/IBinder;I)V
    .locals 3

    invoke-virtual {p0, p1}, isTokenValid(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, mPtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2}, nativeSendKey(JIZ)V

    :cond_0
    return-void
.end method

.method public sendPointerDown(Landroid/os/IBinder;III)V
    .locals 2

    invoke-virtual {p0, p1}, isTokenValid(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, mPtr:J

    invoke-static {v0, v1, p2, p3, p4}, nativeSendPointerDown(JIII)V

    :cond_0
    return-void
.end method

.method public sendPointerSync(Landroid/os/IBinder;)V
    .locals 2

    invoke-virtual {p0, p1}, isTokenValid(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, mPtr:J

    invoke-static {v0, v1}, nativeSendPointerSync(J)V

    :cond_0
    return-void
.end method

.method public sendPointerUp(Landroid/os/IBinder;I)V
    .locals 2

    invoke-virtual {p0, p1}, isTokenValid(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, mPtr:J

    invoke-static {v0, v1, p2}, nativeSendPointerUp(JI)V

    :cond_0
    return-void
.end method

.method public sendTimestamp(Landroid/os/IBinder;J)V
    .locals 2

    invoke-virtual {p0, p1}, isTokenValid(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, mPtr:J

    invoke-static {v0, v1, p2, p3}, nativeSendTimestamp(JJ)V

    :cond_0
    return-void
.end method
