.class public final Lkotlin/UByteArrayKt;
.super Ljava/lang/Object;
.source "UByteArray.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUByteArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UByteArray.kt\nkotlin/UByteArrayKt\n+ 2 IntrinsicArrayConstructors.kt\norg/jetbrains/kotlin/codegen/intrinsics/IntrinsicArrayConstructorsKt\n*L\n1#1,58:1\n98#2,5:59\n*E\n*S KotlinDebug\n*F\n+ 1 UByteArray.kt\nkotlin/UByteArrayKt\n*L\n51#1,5:59\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a-\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\u0005H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u001a\u001f\u0010\u0008\u001a\u00020\u00012\n\u0010\t\u001a\u00020\u0001\"\u00020\u0006H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000b\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000c"
    }
    d2 = {
        "UByteArray",
        "Lkotlin/UByteArray;",
        "size",
        "",
        "init",
        "Lkotlin/Function1;",
        "Lkotlin/UByte;",
        "(ILkotlin/jvm/functions/Function1;)[B",
        "ubyteArrayOf",
        "elements",
        "ubyteArrayOf-GBYM_sE",
        "([B)[B",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# direct methods
.method private static final UByteArray(ILkotlin/jvm/functions/Function1;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/UByte;",
            ">;)[B"
        }
    .end annotation

    .annotation build Lkotlin/ExperimentalUnsignedTypes;
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    new-array v3, p0, [B

    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v1, v4, :cond_0

    move v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p1, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/UByte;

    invoke-virtual {v7}, Lkotlin/UByte;->unbox-impl()B

    move-result v6

    aput-byte v6, v3, v1

    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    invoke-static {v3}, Lkotlin/UByteArray;->constructor-impl([B)[B

    move-result-object v1

    return-object v1
.end method

.method private static final varargs ubyteArrayOf-GBYM_sE([B)[B
    .locals 1
    .annotation build Lkotlin/ExperimentalUnsignedTypes;
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    return-object p0
.end method