.class public final synthetic Lcom/android/server/usb/-$$Lambda$UsbHostManager$XT3F5aQci4H6VWSBYBQQNSzpnvs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/usb/UsbHostManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usb/UsbHostManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, f$0:Lcom/android/server/usb/UsbHostManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, f$0:Lcom/android/server/usb/UsbHostManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbHostManager;->lambda$XT3F5aQci4H6VWSBYBQQNSzpnvs(Lcom/android/server/usb/UsbHostManager;)V

    return-void
.end method
