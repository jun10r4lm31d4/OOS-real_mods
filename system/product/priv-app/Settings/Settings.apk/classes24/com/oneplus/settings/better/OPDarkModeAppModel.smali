.class public Lcom/oneplus/settings/better/OPDarkModeAppModel;
.super Lcom/oneplus/settings/better/OPAppModel;
.source "OPDarkModeAppModel.java"


# instance fields
.field private appIcon:Landroid/graphics/drawable/Drawable;

.field private appLabel:Ljava/lang/String;

.field private appopsMode:I

.field private disable:Z

.field private editMode:Z

.field private isGameAPP:Z

.field private isSelected:Z

.field private label:Ljava/lang/String;

.field private lockMode:I

.field private pkgName:Ljava/lang/String;

.field private shortCutIcon:Landroid/graphics/drawable/Drawable;

.field private shortCutId:Ljava/lang/String;

.field private type:I

.field private uid:I

.field private versionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    iput-object p1, p0, pkgName:Ljava/lang/String;

    iput-object p2, p0, label:Ljava/lang/String;

    iput-object p3, p0, shortCutId:Ljava/lang/String;

    iput p4, p0, uid:I

    iput-boolean p5, p0, isSelected:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/oneplus/settings/better/OPDarkModeAppModel;

    iget-object v3, v2, pkgName:Ljava/lang/String;

    iget-object v4, p0, pkgName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, getUid()I

    move-result v3

    invoke-virtual {p0}, getUid()I

    move-result v4

    if-ne v3, v4, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, appIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, appLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getAppopsMode()I
    .locals 1

    iget v0, p0, appopsMode:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, label:Ljava/lang/String;

    return-object v0
.end method

.method public getLockMode()I
    .locals 1

    iget v0, p0, lockMode:I

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getShortCutIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, shortCutIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getShortCutId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, shortCutId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, type:I

    return v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, uid:I

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, versionCode:I

    return v0
.end method

.method public isDisable()Z
    .locals 1

    iget-boolean v0, p0, disable:Z

    return v0
.end method

.method public isEditMode()Z
    .locals 1

    iget-boolean v0, p0, editMode:Z

    return v0
.end method

.method public isGameAPP()Z
    .locals 1

    iget-boolean v0, p0, isGameAPP:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, isSelected:Z

    return v0
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, appIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setAppLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, appLabel:Ljava/lang/String;

    return-void
.end method

.method public setAppopsMode(I)V
    .locals 0

    iput p1, p0, appopsMode:I

    return-void
.end method

.method public setDisable(Z)V
    .locals 0

    iput-boolean p1, p0, disable:Z

    return-void
.end method

.method public setEditMode(Z)V
    .locals 0

    iput-boolean p1, p0, editMode:Z

    return-void
.end method

.method public setGameAPP(Z)V
    .locals 0

    iput-boolean p1, p0, isGameAPP:Z

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, label:Ljava/lang/String;

    return-void
.end method

.method public setLockMode(I)V
    .locals 0

    iput p1, p0, lockMode:I

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, pkgName:Ljava/lang/String;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, isSelected:Z

    return-void
.end method

.method public setShortCutIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, shortCutIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setShortCutId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, shortCutId:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, type:I

    return-void
.end method

.method public setUid(I)V
    .locals 0

    iput p1, p0, uid:I

    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    iput p1, p0, versionCode:I

    return-void
.end method
