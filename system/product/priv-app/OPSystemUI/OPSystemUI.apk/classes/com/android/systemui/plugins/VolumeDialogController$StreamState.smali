.class public final Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
.super Ljava/lang/Object;
.source "VolumeDialogController.java"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/VolumeDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamState"
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# instance fields
.field public dynamic:Z

.field public level:I

.field public levelMax:I

.field public levelMin:I

.field public muteSupported:Z

.field public muted:Z

.field public name:I

.field public remoteLabel:Ljava/lang/String;

.field public routedToBluetooth:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    .locals 2

    new-instance v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    invoke-direct {v0}, <init>()V

    iget-boolean v1, p0, dynamic:Z

    iput-boolean v1, v0, dynamic:Z

    iget v1, p0, level:I

    iput v1, v0, level:I

    iget v1, p0, levelMin:I

    iput v1, v0, levelMin:I

    iget v1, p0, levelMax:I

    iput v1, v0, levelMax:I

    iget-boolean v1, p0, muted:Z

    iput-boolean v1, v0, muted:Z

    iget-boolean v1, p0, muteSupported:Z

    iput-boolean v1, v0, muteSupported:Z

    iget v1, p0, name:I

    iput v1, v0, name:I

    iget-object v1, p0, remoteLabel:Ljava/lang/String;

    iput-object v1, v0, remoteLabel:Ljava/lang/String;

    iget-boolean p0, p0, routedToBluetooth:Z

    iput-boolean p0, v0, routedToBluetooth:Z

    return-object v0
.end method
