.class public abstract Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService$Stub;
.super Landroid/os/Binder;
.source "IWifiCallingService.java"

# interfaces
.implements Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oneplus.sprint.callingplus.interfaces.IWifiCallingService"

.field static final TRANSACTION_isWifiCallingSwitchChecked:I = 0x2

.field static final TRANSACTION_isWifiCallingSwitchEnable:I = 0x3

.field static final TRANSACTION_isWifiCallingSwitchNormal:I = 0x1

.field static final TRANSACTION_setWifiCallingSwitchState:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oneplus.sprint.callingplus.interfaces.IWifiCallingService"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.oneplus.sprint.callingplus.interfaces.IWifiCallingService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;

    return-object v1

    :cond_1
    new-instance v1, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;
    .locals 1

    sget-object v0, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService$Stub$Proxy;->sDefaultImpl:Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;)Z
    .locals 1

    sget-object v0, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService$Stub$Proxy;->sDefaultImpl:Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService$Stub$Proxy;->sDefaultImpl:Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.oneplus.sprint.callingplus.interfaces.IWifiCallingService"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v2}, setWifiCallingSwitchState(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, isWifiCallingSwitchEnable()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, isWifiCallingSwitchChecked()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, isWifiCallingSwitchNormal()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v1
.end method
