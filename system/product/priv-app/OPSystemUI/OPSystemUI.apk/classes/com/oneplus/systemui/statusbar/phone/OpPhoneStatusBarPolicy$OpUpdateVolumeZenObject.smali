.class public Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;
.super Ljava/lang/Object;
.source "OpPhoneStatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpUpdateVolumeZenObject"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;

.field public volumeDescription:Ljava/lang/String;

.field public volumeIconId:I

.field public volumeVisible:Z

.field public zenDescription:Ljava/lang/String;

.field public zenIconId:I

.field public zenVisible:Z


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;ZILjava/lang/String;ZILjava/lang/String;)V
    .locals 1

    iput-object p1, p0, this$0:Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, zenVisible:Z

    iput p1, p0, zenIconId:I

    const/4 v0, 0x0

    iput-object v0, p0, zenDescription:Ljava/lang/String;

    iput-boolean p1, p0, volumeVisible:Z

    iput p1, p0, volumeIconId:I

    iput-object v0, p0, volumeDescription:Ljava/lang/String;

    iput-boolean p2, p0, zenVisible:Z

    iput p3, p0, zenIconId:I

    iput-object p4, p0, zenDescription:Ljava/lang/String;

    iput-boolean p5, p0, volumeVisible:Z

    iput p6, p0, volumeIconId:I

    iput-object p7, p0, volumeDescription:Ljava/lang/String;

    return-void
.end method
