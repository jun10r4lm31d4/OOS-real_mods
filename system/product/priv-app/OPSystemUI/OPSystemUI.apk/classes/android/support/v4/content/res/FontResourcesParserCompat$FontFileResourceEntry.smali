.class public final Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/res/FontResourcesParserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FontFileResourceEntry"
.end annotation


# instance fields
.field private final mFileName:Ljava/lang/String;

.field private mItalic:Z

.field private mResourceId:I

.field private mTtcIndex:I

.field private mVariationSettings:Ljava/lang/String;

.field private mWeight:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZLjava/lang/String;II)V
    .locals 0

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
    .locals 0

    iget-object p0, p0, mFileName:Ljava/lang/String;

    return-object p0
.end method

.method public getResourceId()I
    .locals 0

    iget p0, p0, mResourceId:I

    return p0
.end method

.method public getTtcIndex()I
    .locals 0

    iget p0, p0, mTtcIndex:I

    return p0
.end method

.method public getVariationSettings()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, mVariationSettings:Ljava/lang/String;

    return-object p0
.end method

.method public getWeight()I
    .locals 0

    iget p0, p0, mWeight:I

    return p0
.end method

.method public isItalic()Z
    .locals 0

    iget-boolean p0, p0, mItalic:Z

    return p0
.end method