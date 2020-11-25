.class Lcom/oneplus/android/server/bluetooth/kth;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/bluetooth/igw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/bluetooth/igw;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/bluetooth/igw;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/android/server/bluetooth/igw;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object p1, p0, this$0:Lcom/oneplus/android/server/bluetooth/igw;

    invoke-static {p1}, Lcom/oneplus/android/server/bluetooth/igw;->zta(Lcom/oneplus/android/server/bluetooth/igw;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, this$0:Lcom/oneplus/android/server/bluetooth/igw;

    invoke-static {p1}, Lcom/oneplus/android/server/bluetooth/igw;->zta(Lcom/oneplus/android/server/bluetooth/igw;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    :goto_0
    iget-object v0, p0, this$0:Lcom/oneplus/android/server/bluetooth/igw;

    invoke-static {v0}, Lcom/oneplus/android/server/bluetooth/igw;->you(Lcom/oneplus/android/server/bluetooth/igw;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xf

    if-ne p1, v0, :cond_1

    iget-object p1, p0, this$0:Lcom/oneplus/android/server/bluetooth/igw;

    invoke-static {p1}, Lcom/oneplus/android/server/bluetooth/igw;->zta(Lcom/oneplus/android/server/bluetooth/igw;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, this$0:Lcom/oneplus/android/server/bluetooth/igw;

    invoke-static {p1}, Lcom/oneplus/android/server/bluetooth/igw;->tsu(Lcom/oneplus/android/server/bluetooth/igw;)Lcom/oneplus/android/server/bluetooth/qbh;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Airplane mode - BLE_ON, package: "

    goto :goto_1

    :cond_1
    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    iget-object p1, p0, this$0:Lcom/oneplus/android/server/bluetooth/igw;

    invoke-static {p1}, Lcom/oneplus/android/server/bluetooth/igw;->tsu(Lcom/oneplus/android/server/bluetooth/igw;)Lcom/oneplus/android/server/bluetooth/qbh;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Airplane mode - ON, package: "

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, this$0:Lcom/oneplus/android/server/bluetooth/igw;

    invoke-static {p0}, Lcom/oneplus/android/server/bluetooth/igw;->sis(Lcom/oneplus/android/server/bluetooth/igw;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oneplus/android/server/bluetooth/qbh;->add(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
