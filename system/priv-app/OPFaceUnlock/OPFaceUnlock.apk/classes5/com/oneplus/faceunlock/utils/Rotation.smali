.class public final enum Lcom/oneplus/faceunlock/utils/Rotation;
.super Ljava/lang/Enum;
.source "Rotation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/faceunlock/utils/Rotation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/faceunlock/utils/Rotation;

.field public static final enum INVERSE_LANDSCAPE:Lcom/oneplus/faceunlock/utils/Rotation;

.field public static final enum INVERSE_PORTRAIT:Lcom/oneplus/faceunlock/utils/Rotation;

.field public static final enum LANDSCAPE:Lcom/oneplus/faceunlock/utils/Rotation;

.field public static final enum PORTRAIT:Lcom/oneplus/faceunlock/utils/Rotation;


# instance fields
.field private final m_Orientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/oneplus/faceunlock/utils/Rotation;

    const-string v1, "INVERSE_PORTRAIT"

    const/16 v2, 0xb4

    invoke-direct {v0, v1, v3, v2}, <init>(Ljava/lang/String;II)V

    sput-object v0, INVERSE_PORTRAIT:Lcom/oneplus/faceunlock/utils/Rotation;

    new-instance v0, Lcom/oneplus/faceunlock/utils/Rotation;

    const-string v1, "INVERSE_LANDSCAPE"

    const/16 v2, 0x5a

    invoke-direct {v0, v1, v4, v2}, <init>(Ljava/lang/String;II)V

    sput-object v0, INVERSE_LANDSCAPE:Lcom/oneplus/faceunlock/utils/Rotation;

    new-instance v0, Lcom/oneplus/faceunlock/utils/Rotation;

    const-string v1, "LANDSCAPE"

    const/16 v2, 0x10e

    invoke-direct {v0, v1, v5, v2}, <init>(Ljava/lang/String;II)V

    sput-object v0, LANDSCAPE:Lcom/oneplus/faceunlock/utils/Rotation;

    new-instance v0, Lcom/oneplus/faceunlock/utils/Rotation;

    const-string v1, "PORTRAIT"

    invoke-direct {v0, v1, v6, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, PORTRAIT:Lcom/oneplus/faceunlock/utils/Rotation;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/faceunlock/utils/Rotation;

    sget-object v1, INVERSE_PORTRAIT:Lcom/oneplus/faceunlock/utils/Rotation;

    aput-object v1, v0, v3

    sget-object v1, INVERSE_LANDSCAPE:Lcom/oneplus/faceunlock/utils/Rotation;

    aput-object v1, v0, v4

    sget-object v1, LANDSCAPE:Lcom/oneplus/faceunlock/utils/Rotation;

    aput-object v1, v0, v5

    sget-object v1, PORTRAIT:Lcom/oneplus/faceunlock/utils/Rotation;

    aput-object v1, v0, v6

    sput-object v0, $VALUES:[Lcom/oneplus/faceunlock/utils/Rotation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, m_Orientation:I

    return-void
.end method

.method public static fromOrientation(I)Lcom/oneplus/faceunlock/utils/Rotation;
    .locals 3

    const/16 v2, 0xe1

    const/16 v1, 0x87

    const/16 v0, 0x2d

    if-lt p0, v0, :cond_0

    if-ge p0, v1, :cond_0

    sget-object v0, INVERSE_LANDSCAPE:Lcom/oneplus/faceunlock/utils/Rotation;

    :goto_0
    return-object v0

    :cond_0
    if-lt p0, v1, :cond_1

    if-ge p0, v2, :cond_1

    sget-object v0, INVERSE_PORTRAIT:Lcom/oneplus/faceunlock/utils/Rotation;

    goto :goto_0

    :cond_1
    if-lt p0, v2, :cond_2

    const/16 v0, 0x13b

    if-ge p0, v0, :cond_2

    sget-object v0, LANDSCAPE:Lcom/oneplus/faceunlock/utils/Rotation;

    goto :goto_0

    :cond_2
    sget-object v0, PORTRAIT:Lcom/oneplus/faceunlock/utils/Rotation;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/faceunlock/utils/Rotation;
    .locals 1

    const-class v0, Lcom/oneplus/faceunlock/utils/Rotation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/faceunlock/utils/Rotation;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/faceunlock/utils/Rotation;
    .locals 1

    sget-object v0, $VALUES:[Lcom/oneplus/faceunlock/utils/Rotation;

    invoke-virtual {v0}, [Lcom/oneplus/faceunlock/utils/Rotation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/faceunlock/utils/Rotation;

    return-object v0
.end method


# virtual methods
.method public getOrientation()I
    .locals 1

    iget v0, p0, m_Orientation:I

    return v0
.end method

.method public toDegrees()I
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/oneplus/faceunlock/utils/Rotation$1;->$SwitchMap$com$oneplus$faceunlock$utils$Rotation:[I

    invoke-virtual {p0}, ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x10e

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x5a

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
