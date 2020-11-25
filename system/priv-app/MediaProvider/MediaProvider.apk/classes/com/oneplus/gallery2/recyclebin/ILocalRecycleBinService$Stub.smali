.class public abstract Lcom/oneplus/gallery2/recyclebin/ILocalRecycleBinService$Stub;
.super Landroid/os/Binder;
.source "ILocalRecycleBinService.java"

# interfaces
.implements Lcom/oneplus/gallery2/recyclebin/ILocalRecycleBinService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/recyclebin/ILocalRecycleBinService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/recyclebin/ILocalRecycleBinService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/oneplus/gallery2/recyclebin/ILocalRecycleBinService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.oneplus.gallery2.recyclebin.ILocalRecycleBinService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oneplus/gallery2/recyclebin/ILocalRecycleBinService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/oneplus/gallery2/recyclebin/ILocalRecycleBinService;

    return-object v0

    :cond_1
    new-instance v0, Lcom/oneplus/gallery2/recyclebin/ILocalRecycleBinService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/recyclebin/ILocalRecycleBinService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/oneplus/gallery2/recyclebin/ILocalRecycleBinService;
    .locals 1

    sget-object v0, Lcom/oneplus/gallery2/recyclebin/ILocalRecycleBinService$Stub$Proxy;->sDefaultImpl:Lcom/oneplus/gallery2/recyclebin/ILocalRecycleBinService;

    return-object v0
.end method
