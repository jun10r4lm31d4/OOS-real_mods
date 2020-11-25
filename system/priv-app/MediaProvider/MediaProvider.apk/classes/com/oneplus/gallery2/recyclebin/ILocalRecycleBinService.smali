.class public interface abstract Lcom/oneplus/gallery2/recyclebin/ILocalRecycleBinService;
.super Ljava/lang/Object;
.source "ILocalRecycleBinService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/recyclebin/ILocalRecycleBinService$Stub;
    }
.end annotation


# virtual methods
.method public abstract moveToRecycleBin(Ljava/lang/String;Landroid/os/Bundle;I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
