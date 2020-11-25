.class public Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;
.super Ljava/lang/Object;
.source "CameraDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/camera/CameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpenParams"
.end annotation


# instance fields
.field public cameraDisconnectedCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$CameraDisconnectedCallback;

.field public cameraErrorCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$CameraErrorCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
