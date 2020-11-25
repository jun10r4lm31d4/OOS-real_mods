.class public Lcom/oneplus/support/core/provider/FontsContractCompat$FontInfo;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/provider/FontsContractCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontInfo"
.end annotation


# instance fields
.field private final mItalic:Z

.field private final mResultCode:I

.field private final mTtcIndex:I

.field private final mUri:Landroid/net/Uri;

.field private final mWeight:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;IIZI)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/oneplus/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lcom/oneplus/support/annotation/IntRange;
            from = 0x1L
            to = 0x3e8L
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/oneplus/support/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, mUri:Landroid/net/Uri;

    iput p2, p0, mTtcIndex:I

    iput p3, p0, mWeight:I

    iput-boolean p4, p0, mItalic:Z

    iput p5, p0, mResultCode:I

    return-void
.end method


# virtual methods
.method public getResultCode()I
    .locals 1

    iget v0, p0, mResultCode:I

    return v0
.end method

.method public getTtcIndex()I
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/IntRange;
        from = 0x0L
    .end annotation

    iget v0, p0, mTtcIndex:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getWeight()I
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/IntRange;
        from = 0x1L
        to = 0x3e8L
    .end annotation

    iget v0, p0, mWeight:I

    return v0
.end method

.method public isItalic()Z
    .locals 1

    iget-boolean v0, p0, mItalic:Z

    return v0
.end method
