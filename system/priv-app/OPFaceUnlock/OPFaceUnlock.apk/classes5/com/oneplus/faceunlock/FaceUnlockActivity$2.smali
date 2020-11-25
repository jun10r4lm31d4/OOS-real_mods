.class Lcom/oneplus/faceunlock/FaceUnlockActivity$2;
.super Ljava/lang/Object;
.source "FaceUnlockActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/FaceUnlockActivity;->onPackageManagerProxyConnected(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/FaceUnlockActivity;

.field final synthetic val$packageManagerProxy:Lcom/oneplus/camera/service/IPackageManagerProxy;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/FaceUnlockActivity;Lcom/oneplus/camera/service/IPackageManagerProxy;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockActivity;

    iput-object p2, p0, val$packageManagerProxy:Lcom/oneplus/camera/service/IPackageManagerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockActivity;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onPackageManagerProxyConnected() - Agree to disable GMS face lock"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, val$packageManagerProxy:Lcom/oneplus/camera/service/IPackageManagerProxy;

    const-string v2, "com.android.facelock"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/service/IPackageManagerProxy;->setApplicationEnabledSetting(Ljava/lang/String;Z)V

    iget-object v1, p0, val$packageManagerProxy:Lcom/oneplus/camera/service/IPackageManagerProxy;

    const-string v2, "com.android.facelock"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/service/IPackageManagerProxy;->setApplicationHiddenSettingAsUser(Ljava/lang/String;Z)Z

    const-string v1, "IsGsmFacelockHidden"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/oneplus/faceunlock/utils/Settings;->set(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockActivity;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onPackageManagerProxyConnected() - GMS facelock is disabled and hidden"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockActivity;

    invoke-static {v1, v4}, Lcom/oneplus/faceunlock/FaceUnlockActivity;->access$300(Lcom/oneplus/faceunlock/FaceUnlockActivity;Z)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockActivity;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onPackageManagerProxyConnected() - Fail to disable & hide"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
