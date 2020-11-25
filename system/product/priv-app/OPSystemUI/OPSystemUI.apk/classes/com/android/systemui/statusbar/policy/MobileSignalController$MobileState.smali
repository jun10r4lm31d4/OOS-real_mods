.class Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;
.super Lcom/android/systemui/statusbar/policy/SignalController$State;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MobileState"
.end annotation


# instance fields
.field airplaneMode:Z

.field carrierNetworkChangeMode:Z

.field dataConnected:Z

.field dataSim:Z

.field fakePSIcon:Z

.field imsRegistered:Z

.field isDefault:Z

.field isDefaultDataSubId:Z

.field isDemoMode:Z

.field isEmergency:Z

.field isVirtual:Z

.field networkName:Ljava/lang/String;

.field networkNameData:Ljava/lang/String;

.field roaming:Z

.field simstate:Ljava/lang/String;

.field userSetup:Z

.field videoCapable:Z

.field voiceCapable:Z


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SignalController$State;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/systemui/statusbar/policy/SignalController$State;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController$State;->copyFrom(Lcom/android/systemui/statusbar/policy/SignalController$State;)V

    check-cast p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, p1, dataSim:Z

    iput-boolean v0, p0, dataSim:Z

    iget-object v0, p1, networkName:Ljava/lang/String;

    iput-object v0, p0, networkName:Ljava/lang/String;

    iget-object v0, p1, networkNameData:Ljava/lang/String;

    iput-object v0, p0, networkNameData:Ljava/lang/String;

    iget-boolean v0, p1, dataConnected:Z

    iput-boolean v0, p0, dataConnected:Z

    iget-boolean v0, p1, isDefault:Z

    iput-boolean v0, p0, isDefault:Z

    iget-boolean v0, p1, isEmergency:Z

    iput-boolean v0, p0, isEmergency:Z

    iget-boolean v0, p1, airplaneMode:Z

    iput-boolean v0, p0, airplaneMode:Z

    iget-boolean v0, p1, carrierNetworkChangeMode:Z

    iput-boolean v0, p0, carrierNetworkChangeMode:Z

    iget-boolean v0, p1, userSetup:Z

    iput-boolean v0, p0, userSetup:Z

    iget-boolean v0, p1, roaming:Z

    iput-boolean v0, p0, roaming:Z

    iget-boolean v0, p1, imsRegistered:Z

    iput-boolean v0, p0, imsRegistered:Z

    iget-boolean v0, p1, voiceCapable:Z

    iput-boolean v0, p0, voiceCapable:Z

    iget-boolean v0, p1, videoCapable:Z

    iput-boolean v0, p0, videoCapable:Z

    iget-object v0, p1, simstate:Ljava/lang/String;

    iput-object v0, p0, simstate:Ljava/lang/String;

    iget-boolean v0, p1, isDefaultDataSubId:Z

    iput-boolean v0, p0, isDefaultDataSubId:Z

    iget-boolean v0, p1, isVirtual:Z

    iput-boolean v0, p0, isVirtual:Z

    iget-boolean v0, p1, isDemoMode:Z

    iput-boolean v0, p0, isDemoMode:Z

    iget-boolean p1, p1, fakePSIcon:Z

    iput-boolean p1, p0, fakePSIcon:Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, p1, networkName:Ljava/lang/String;

    iget-object v1, p0, networkName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, networkNameData:Ljava/lang/String;

    iget-object v1, p0, networkNameData:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, dataSim:Z

    iget-boolean v1, p0, dataSim:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, dataConnected:Z

    iget-boolean v1, p0, dataConnected:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, isEmergency:Z

    iget-boolean v1, p0, isEmergency:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, airplaneMode:Z

    iget-boolean v1, p0, airplaneMode:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, carrierNetworkChangeMode:Z

    iget-boolean v1, p0, carrierNetworkChangeMode:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, userSetup:Z

    iget-boolean v1, p0, userSetup:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, isDefault:Z

    iget-boolean v1, p0, isDefault:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, roaming:Z

    iget-boolean v1, p0, roaming:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, imsRegistered:Z

    iget-boolean v1, p0, imsRegistered:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, voiceCapable:Z

    iget-boolean v1, p0, voiceCapable:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, videoCapable:Z

    iget-boolean v1, p0, videoCapable:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p1, simstate:Ljava/lang/String;

    iget-object v1, p0, simstate:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, isDefaultDataSubId:Z

    iget-boolean v1, p0, isDefaultDataSubId:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, isVirtual:Z

    iget-boolean v1, p0, isVirtual:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, isDemoMode:Z

    iget-boolean v1, p0, isDemoMode:Z

    if-ne v0, v1, :cond_0

    iget-boolean p1, p1, fakePSIcon:Z

    iget-boolean p0, p0, fakePSIcon:Z

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController$State;->toString(Ljava/lang/StringBuilder;)V

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "dataSim="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, dataSim:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "networkName="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, networkName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "networkNameData="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, networkNameData:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "dataConnected="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, dataConnected:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "roaming="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, roaming:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "isDefault="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, isDefault:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "isEmergency="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, isEmergency:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "airplaneMode="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, airplaneMode:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "carrierNetworkChangeMode="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, carrierNetworkChangeMode:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "userSetup="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, userSetup:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "imsRegistered="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, imsRegistered:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "voiceCapable="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, voiceCapable:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "videoCapable="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, videoCapable:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "simstate="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, simstate:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "isDefaultDataSubId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, isDefaultDataSubId:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "isVirtual"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, isVirtual:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "isDemoMode"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, isDemoMode:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "fakePSIcon"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, fakePSIcon:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-void
.end method
