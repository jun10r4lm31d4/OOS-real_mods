.class public Lcom/oneplus/faceunlock/camera/CameraDevice$PreviewFrame;
.super Ljava/lang/Object;
.source "CameraDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/camera/CameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreviewFrame"
.end annotation


# instance fields
.field public final data:[B

.field final synthetic this$0:Lcom/oneplus/faceunlock/camera/CameraDevice;

.field public final timestamp:J


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/camera/CameraDevice;[BJ)V
    .locals 1

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/camera/CameraDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, data:[B

    iput-wide p3, p0, timestamp:J

    return-void
.end method
