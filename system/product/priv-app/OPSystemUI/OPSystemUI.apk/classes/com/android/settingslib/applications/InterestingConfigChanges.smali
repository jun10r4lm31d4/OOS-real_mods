.class public Lcom/android/settingslib/applications/InterestingConfigChanges;
.super Ljava/lang/Object;
.source "InterestingConfigChanges.java"


# instance fields
.field private final mFlags:I

.field private final mLastConfiguration:Landroid/content/res/Configuration;

.field private mLastDensity:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, -0x7ffffcfc

    invoke-direct {p0, v0}, <init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, mLastConfiguration:Landroid/content/res/Configuration;

    iput p1, p0, mFlags:I

    return-void
.end method


# virtual methods
.method public applyNewConfig(Landroid/content/res/Resources;)Z
    .locals 5

    iget-object v0, p0, mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/res/Configuration;->generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    iget v1, p0, mLastDensity:I

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    if-nez v1, :cond_2

    iget v1, p0, mFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    return v4

    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p1, p0, mLastDensity:I

    return v3
.end method
