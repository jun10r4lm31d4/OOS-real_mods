.class public final synthetic Lcom/android/server/connectivity/-$$Lambda$Tethering$CL7AR28AECaRXzwrU9_xiYIE5GE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/connectivity/Tethering;

.field private final synthetic f$1:Landroid/net/ITetheringEventCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;Landroid/net/ITetheringEventCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, f$0:Lcom/android/server/connectivity/Tethering;

    iput-object p2, p0, f$1:Landroid/net/ITetheringEventCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, f$0:Lcom/android/server/connectivity/Tethering;

    iget-object v1, p0, f$1:Landroid/net/ITetheringEventCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering;->lambda$registerTetheringEventCallback$4$Tethering(Landroid/net/ITetheringEventCallback;)V

    return-void
.end method
