.class final Lokio/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final MAP:[B

.field private static final URL_MAP:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x40

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, MAP:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, URL_MAP:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    const/16 v1, 0x9

    const/16 v2, 0x20

    const/16 v3, 0xd

    const/16 v4, 0xa

    if-lez v0, :cond_1

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3d

    if-eq v5, v6, :cond_0

    if-eq v5, v4, :cond_0

    if-eq v5, v3, :cond_0

    if-eq v5, v2, :cond_0

    if-eq v5, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    int-to-long v5, v0

    const-wide/16 v7, 0x6

    mul-long/2addr v5, v7

    const-wide/16 v7, 0x8

    div-long/2addr v5, v7

    long-to-int v5, v5

    new-array v5, v5, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2
    const/4 v10, 0x0

    if-ge v9, v0, :cond_b

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x41

    if-lt v11, v12, :cond_2

    const/16 v12, 0x5a

    if-gt v11, v12, :cond_2

    add-int/lit8 v10, v11, -0x41

    goto :goto_5

    :cond_2
    const/16 v12, 0x61

    if-lt v11, v12, :cond_3

    const/16 v12, 0x7a

    if-gt v11, v12, :cond_3

    add-int/lit8 v10, v11, -0x47

    goto :goto_5

    :cond_3
    const/16 v12, 0x30

    if-lt v11, v12, :cond_4

    const/16 v12, 0x39

    if-gt v11, v12, :cond_4

    add-int/lit8 v10, v11, 0x4

    goto :goto_5

    :cond_4
    const/16 v12, 0x2b

    if-eq v11, v12, :cond_9

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_5

    goto :goto_4

    :cond_5
    const/16 v12, 0x2f

    if-eq v11, v12, :cond_8

    const/16 v12, 0x5f

    if-ne v11, v12, :cond_6

    goto :goto_3

    :cond_6
    if-eq v11, v4, :cond_a

    if-eq v11, v3, :cond_a

    if-eq v11, v2, :cond_a

    if-ne v11, v1, :cond_7

    goto :goto_6

    :cond_7
    return-object v10

    :cond_8
    :goto_3
    const/16 v10, 0x3f

    goto :goto_5

    :cond_9
    :goto_4
    const/16 v10, 0x3e

    :goto_5
    shl-int/lit8 v12, v8, 0x6

    int-to-byte v13, v10

    or-int v8, v12, v13

    add-int/lit8 v7, v7, 0x1

    rem-int/lit8 v12, v7, 0x4

    if-nez v12, :cond_a

    add-int/lit8 v12, v6, 0x1

    shr-int/lit8 v13, v8, 0x10

    int-to-byte v13, v13

    aput-byte v13, v5, v6

    add-int/lit8 v6, v12, 0x1

    shr-int/lit8 v13, v8, 0x8

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    add-int/lit8 v12, v6, 0x1

    int-to-byte v13, v8

    aput-byte v13, v5, v6

    move v6, v12

    :cond_a
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_b
    rem-int/lit8 v1, v7, 0x4

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    return-object v10

    :cond_c
    const/4 v2, 0x2

    if-ne v1, v2, :cond_d

    shl-int/lit8 v8, v8, 0xc

    add-int/lit8 v2, v6, 0x1

    shr-int/lit8 v3, v8, 0x10

    int-to-byte v3, v3

    aput-byte v3, v5, v6

    move v6, v2

    goto :goto_7

    :cond_d
    const/4 v2, 0x3

    if-ne v1, v2, :cond_e

    shl-int/lit8 v8, v8, 0x6

    add-int/lit8 v2, v6, 0x1

    shr-int/lit8 v3, v8, 0x10

    int-to-byte v3, v3

    aput-byte v3, v5, v6

    add-int/lit8 v6, v2, 0x1

    shr-int/lit8 v3, v8, 0x8

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    :cond_e
    :goto_7
    array-length v2, v5

    if-ne v6, v2, :cond_f

    return-object v5

    :cond_f
    new-array v2, v6, [B

    const/4 v3, 0x0

    invoke-static {v5, v3, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 1

    sget-object v0, MAP:[B

    invoke-static {p0, v0}, encode([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encode([B[B)Ljava/lang/String;
    .locals 9

    array-length v0, p0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    new-array v2, v0, [B

    const/4 v3, 0x0

    array-length v4, p0

    array-length v5, p0

    rem-int/lit8 v5, v5, 0x3

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    add-int/lit8 v6, v3, 0x1

    aget-byte v7, p0, v5

    and-int/lit16 v7, v7, 0xff

    shr-int/2addr v7, v1

    aget-byte v7, p1, v7

    aput-byte v7, v2, v3

    add-int/lit8 v3, v6, 0x1

    aget-byte v7, p0, v5

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v8, v5, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x4

    or-int/2addr v7, v8

    aget-byte v7, p1, v7

    aput-byte v7, v2, v6

    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v7, v5, 0x1

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0xf

    shl-int/2addr v7, v1

    add-int/lit8 v8, v5, 0x2

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x6

    or-int/2addr v7, v8

    aget-byte v7, p1, v7

    aput-byte v7, v2, v3

    add-int/lit8 v3, v6, 0x1

    add-int/lit8 v7, v5, 0x2

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, p1, v7

    aput-byte v7, v2, v6

    add-int/lit8 v5, v5, 0x3

    goto :goto_0

    :cond_0
    array-length v5, p0

    rem-int/lit8 v5, v5, 0x3

    const/16 v6, 0x3d

    const/4 v7, 0x1

    if-eq v5, v7, :cond_2

    if-eq v5, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v3, 0x1

    aget-byte v7, p0, v4

    and-int/lit16 v7, v7, 0xff

    shr-int/2addr v7, v1

    aget-byte v7, p1, v7

    aput-byte v7, v2, v3

    add-int/lit8 v3, v5, 0x1

    aget-byte v7, p0, v4

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v8, v4, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x4

    or-int/2addr v7, v8

    aget-byte v7, p1, v7

    aput-byte v7, v2, v5

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v1, v7, 0x2

    aget-byte v1, p1, v1

    aput-byte v1, v2, v3

    add-int/lit8 v3, v5, 0x1

    aput-byte v6, v2, v5

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v3, 0x1

    aget-byte v7, p0, v4

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v1, v7, 0x2

    aget-byte v1, p1, v1

    aput-byte v1, v2, v3

    add-int/lit8 v1, v5, 0x1

    aget-byte v3, p0, v4

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x4

    aget-byte v3, p1, v3

    aput-byte v3, v2, v5

    add-int/lit8 v3, v1, 0x1

    aput-byte v6, v2, v1

    add-int/lit8 v1, v3, 0x1

    aput-byte v6, v2, v3

    move v3, v1

    :goto_1
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v5, "US-ASCII"

    invoke-direct {v1, v2, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
.end method

.method public static encodeUrl([B)Ljava/lang/String;
    .locals 1

    sget-object v0, URL_MAP:[B

    invoke-static {p0, v0}, encode([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
