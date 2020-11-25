.class public abstract Lcom/android/providers/media/IMtpService$Stub;
.super Landroid/os/Binder;
.source "IMtpService.java"

# interfaces
.implements Lcom/android/providers/media/IMtpService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/IMtpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/IMtpService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.providers.media.IMtpService"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.providers.media.IMtpService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/providers/media/IMtpService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.providers.media.IMtpService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/providers/media/IMtpService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/providers/media/IMtpService;

    return-object v0

    :cond_1
    new-instance v0, Lcom/android/providers/media/IMtpService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/providers/media/IMtpService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/android/providers/media/IMtpService;
    .locals 1

    sget-object v0, Lcom/android/providers/media/IMtpService$Stub$Proxy;->sDefaultImpl:Lcom/android/providers/media/IMtpService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/android/providers/media/IMtpService;)Z
    .locals 1

    sget-object v0, Lcom/android/providers/media/IMtpService$Stub$Proxy;->sDefaultImpl:Lcom/android/providers/media/IMtpService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/android/providers/media/IMtpService$Stub$Proxy;->sDefaultImpl:Lcom/android/providers/media/IMtpService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "com.android.providers.media.IMtpService"

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
