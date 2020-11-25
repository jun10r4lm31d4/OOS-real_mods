.class public Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
.super Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;
.source "StatusBarSignalPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MobileIconState"
.end annotation


# instance fields
.field public dataConnected:Z

.field public needsLeadingPadding:Z

.field public phoneId:I

.field public roaming:Z

.field public showNoSim:Z

.field public stackedDataStrengthId:I

.field public stackedDataTypeId:I

.field public stackedVoiceStrengthId:I

.field public stackedVoiceTypeId:I

.field public strengthId:I

.field public subId:I

.field public typeContentDescription:Ljava/lang/String;

.field public typeId:I

.field public volteId:I


# direct methods
.method private constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$1;)V

    const/4 v0, 0x0

    iput v0, p0, stackedDataStrengthId:I

    iput v0, p0, stackedVoiceStrengthId:I

    iput v0, p0, stackedDataTypeId:I

    iput v0, p0, stackedVoiceTypeId:I

    iput-boolean v0, p0, dataConnected:Z

    iput v0, p0, phoneId:I

    iput p1, p0, subId:I

    if-gez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, showNoSim:Z

    iput-boolean p1, p0, visible:Z

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(ILcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$1;)V
    .locals 0

    invoke-direct {p0, p1}, <init>(I)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, copyStates(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static copyStates(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v1, subId:I

    invoke-direct {v2, v3}, <init>(I)V

    invoke-virtual {v1, v2}, copyTo(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v1, p0, subId:I

    invoke-direct {v0, v1}, <init>(I)V

    invoke-virtual {p0, v0}, copyTo(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    return-object v0
.end method

.method public copyTo(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->copyTo(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;)V

    iget v0, p0, subId:I

    iput v0, p1, subId:I

    iget v0, p0, strengthId:I

    iput v0, p1, strengthId:I

    iget v0, p0, typeId:I

    iput v0, p1, typeId:I

    iget-boolean v0, p0, roaming:Z

    iput-boolean v0, p1, roaming:Z

    iget-boolean v0, p0, needsLeadingPadding:Z

    iput-boolean v0, p1, needsLeadingPadding:Z

    iget-object v0, p0, typeContentDescription:Ljava/lang/String;

    iput-object v0, p1, typeContentDescription:Ljava/lang/String;

    iget v0, p0, volteId:I

    iput v0, p1, volteId:I

    iget v0, p0, stackedDataStrengthId:I

    iput v0, p1, stackedDataStrengthId:I

    iget v0, p0, stackedVoiceStrengthId:I

    iput v0, p1, stackedVoiceStrengthId:I

    iget v0, p0, stackedDataTypeId:I

    iput v0, p1, stackedDataTypeId:I

    iget v0, p0, stackedVoiceTypeId:I

    iput v0, p1, stackedVoiceTypeId:I

    iget-boolean v0, p0, dataConnected:Z

    iput-boolean v0, p1, dataConnected:Z

    iget-boolean v0, p0, showNoSim:Z

    iput-boolean v0, p1, showNoSim:Z

    iget p0, p0, phoneId:I

    iput p0, p1, phoneId:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v1, p0, subId:I

    iget v2, p1, subId:I

    if-ne v1, v2, :cond_2

    iget v1, p0, strengthId:I

    iget v2, p1, strengthId:I

    if-ne v1, v2, :cond_2

    iget v1, p0, typeId:I

    iget v2, p1, typeId:I

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, roaming:Z

    iget-boolean v2, p1, roaming:Z

    if-ne v1, v2, :cond_2

    iget v1, p0, stackedDataTypeId:I

    iget v2, p1, stackedDataTypeId:I

    if-ne v1, v2, :cond_2

    iget v1, p0, stackedVoiceTypeId:I

    iget v2, p1, stackedVoiceTypeId:I

    if-ne v1, v2, :cond_2

    iget v1, p0, stackedDataStrengthId:I

    iget v2, p1, stackedDataStrengthId:I

    if-ne v1, v2, :cond_2

    iget v1, p0, stackedVoiceStrengthId:I

    iget v2, p1, stackedVoiceStrengthId:I

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, dataConnected:Z

    iget-boolean v2, p1, dataConnected:Z

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, showNoSim:Z

    iget-boolean v2, p1, showNoSim:Z

    if-ne v1, v2, :cond_2

    iget v1, p0, phoneId:I

    iget v2, p1, phoneId:I

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, needsLeadingPadding:Z

    iget-boolean v2, p1, needsLeadingPadding:Z

    if-ne v1, v2, :cond_2

    iget-object v1, p0, typeContentDescription:Ljava/lang/String;

    iget-object v2, p1, typeContentDescription:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget p0, p0, volteId:I

    iget p1, p1, volteId:I

    if-ne p0, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, subId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, strengthId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, typeId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, roaming:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, needsLeadingPadding:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object p0, p0, typeContentDescription:Ljava/lang/String;

    const/4 v1, 0x6

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isAbsent()Z
    .locals 0

    iget p0, p0, subId:I

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MobileIconState(subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, subId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", strengthId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, strengthId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", roaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, roaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", typeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, typeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", volteId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, volteId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, visible:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
