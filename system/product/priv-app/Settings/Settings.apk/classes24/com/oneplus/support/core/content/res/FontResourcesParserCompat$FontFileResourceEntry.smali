.class public final Lcom/oneplus/support/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/content/res/FontResourcesParserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FontFileResourceEntry"
.end annotation


# instance fields
.field private final mFileName:Ljava/lang/String;
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end field

.field private mItalic:Z

.field private mResourceId:I

.field private mTtcIndex:I

.field private mVariationSettings:Ljava/lang/String;

.field private mWeight:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZLjava/lang/String;II)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, mFileName:Ljava/lang/String;

    iput p2, p0, mWeight:I

    iput-boolean p3, p0, mItalic:Z

    iput-object p4, p0, mVariationSettings:Ljava/lang/String;

    iput p5, p0, mTtcIndex:I

    iput p6, p0, mResourceId:I

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceId()I
    .locals 1

    iget v0, p0, mResourceId:I

    return v0
.end method

.method public getTtcIndex()I
    .locals 1

    iget v0, p0, mTtcIndex:I

    return v0
.end method

.method public getVariationSettings()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, mVariationSettings:Ljava/lang/String;

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    iget v0, p0, mWeight:I

    return v0
.end method

.method public isItalic()Z
    .locals 1

    iget-boolean v0, p0, mItalic:Z

    return v0
.end method
