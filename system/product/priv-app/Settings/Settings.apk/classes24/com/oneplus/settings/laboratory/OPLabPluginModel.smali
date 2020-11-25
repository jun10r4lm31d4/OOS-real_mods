.class public Lcom/oneplus/settings/laboratory/OPLabPluginModel;
.super Ljava/lang/Object;
.source "OPLabPluginModel.java"


# instance fields
.field private action:Ljava/lang/String;

.field private featureIconId:I

.field private featureKey:Ljava/lang/String;

.field private featureSummary:Ljava/lang/String;

.field private featureTitle:Ljava/lang/String;

.field private multiToggleName:[Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private toggleCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public geFeatureIconId()I
    .locals 1

    iget v0, p0, featureIconId:I

    return v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, action:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatureKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, featureKey:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatureSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, featureSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatureTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, featureTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getMultiToggleName()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, multiToggleName:[Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getToggleCount()I
    .locals 1

    iget v0, p0, toggleCount:I

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, action:Ljava/lang/String;

    return-void
.end method

.method public setFeatureIconId(I)V
    .locals 0

    iput p1, p0, featureIconId:I

    return-void
.end method

.method public setFeatureKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, featureKey:Ljava/lang/String;

    return-void
.end method

.method public setFeatureSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, featureSummary:Ljava/lang/String;

    return-void
.end method

.method public setFeatureTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, featureTitle:Ljava/lang/String;

    return-void
.end method

.method public setMultiToggleName([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, multiToggleName:[Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, packageName:Ljava/lang/String;

    return-void
.end method

.method public setToggleCount(I)V
    .locals 0

    iput p1, p0, toggleCount:I

    return-void
.end method
