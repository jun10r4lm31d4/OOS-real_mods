.class public final Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"

# interfaces
.implements Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/res/FontResourcesParserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProviderResourceEntry"
.end annotation


# instance fields
.field private final mRequest:Landroidx/core/provider/FontRequest;

.field private final mStrategy:I

.field private final mTimeoutMs:I


# direct methods
.method public constructor <init>(Landroidx/core/provider/FontRequest;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, mRequest:Landroidx/core/provider/FontRequest;

    iput p2, p0, mStrategy:I

    iput p3, p0, mTimeoutMs:I

    return-void
.end method


# virtual methods
.method public getFetchStrategy()I
    .locals 0

    iget p0, p0, mStrategy:I

    return p0
.end method

.method public getRequest()Landroidx/core/provider/FontRequest;
    .locals 0

    iget-object p0, p0, mRequest:Landroidx/core/provider/FontRequest;

    return-object p0
.end method

.method public getTimeout()I
    .locals 0

    iget p0, p0, mTimeoutMs:I

    return p0
.end method
