.class public Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/FontsContractCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontFamilyResult"
.end annotation


# instance fields
.field private final mFonts:[Landroidx/core/provider/FontsContractCompat$FontInfo;

.field private final mStatusCode:I


# direct methods
.method public constructor <init>(I[Landroidx/core/provider/FontsContractCompat$FontInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, mStatusCode:I

    iput-object p2, p0, mFonts:[Landroidx/core/provider/FontsContractCompat$FontInfo;

    return-void
.end method


# virtual methods
.method public getFonts()[Landroidx/core/provider/FontsContractCompat$FontInfo;
    .locals 0

    iget-object p0, p0, mFonts:[Landroidx/core/provider/FontsContractCompat$FontInfo;

    return-object p0
.end method

.method public getStatusCode()I
    .locals 0

    iget p0, p0, mStatusCode:I

    return p0
.end method
