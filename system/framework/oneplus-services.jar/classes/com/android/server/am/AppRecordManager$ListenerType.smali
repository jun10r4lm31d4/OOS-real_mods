.class public final enum Lcom/android/server/am/AppRecordManager$ListenerType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppRecordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ListenerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/AppRecordManager$ListenerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum AUDIO:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum CAMERA:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum FLASHLIGHT:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum GPS:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum SENSOR:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum TRAFFIC:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum VIBRATOR:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum VIDEO:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum Xva:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum Yva:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum Zva:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum _va:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum awa:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum bwa:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum cwa:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum dwa:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum ewa:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum fwa:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum gwa:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum hwa:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum iwa:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum jwa:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum kwa:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum lwa:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum mwa:Lcom/android/server/am/AppRecordManager$ListenerType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const/4 v1, 0x0

    const-string v2, "UNKNOW"

    invoke-direct {v0, v2, v1, v1}, <init>(Ljava/lang/String;II)V

    sput-object v0, Xva:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const/4 v2, 0x1

    const-string v3, "SENSOR"

    invoke-direct {v0, v3, v2, v2}, <init>(Ljava/lang/String;II)V

    sput-object v0, SENSOR:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const/4 v3, 0x2

    const-string v4, "AUDIO"

    invoke-direct {v0, v4, v3, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, AUDIO:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const/4 v4, 0x3

    const-string v5, "VIDEO"

    invoke-direct {v0, v5, v4, v4}, <init>(Ljava/lang/String;II)V

    sput-object v0, VIDEO:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const/4 v5, 0x4

    const-string v6, "CAMERA"

    invoke-direct {v0, v6, v5, v5}, <init>(Ljava/lang/String;II)V

    sput-object v0, CAMERA:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const/4 v6, 0x5

    const-string v7, "FLASHLIGHT"

    invoke-direct {v0, v7, v6, v6}, <init>(Ljava/lang/String;II)V

    sput-object v0, FLASHLIGHT:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const/4 v7, 0x6

    const-string v8, "VIBRATOR"

    invoke-direct {v0, v8, v7, v7}, <init>(Ljava/lang/String;II)V

    sput-object v0, VIBRATOR:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const/4 v8, 0x7

    const-string v9, "GPS"

    invoke-direct {v0, v9, v8, v8}, <init>(Ljava/lang/String;II)V

    sput-object v0, GPS:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const/16 v9, 0x8

    const-string v10, "TRAFFIC"

    invoke-direct {v0, v10, v9, v9}, <init>(Ljava/lang/String;II)V

    sput-object v0, TRAFFIC:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const/16 v10, 0x9

    const-string v11, "PROCSTATE"

    invoke-direct {v0, v11, v10, v10}, <init>(Ljava/lang/String;II)V

    sput-object v0, Yva:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const/16 v11, 0xa

    const-string v12, "UIDSTATE"

    invoke-direct {v0, v12, v11, v11}, <init>(Ljava/lang/String;II)V

    sput-object v0, Zva:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const/16 v12, 0xb

    const-string v13, "PSSSTATE"

    invoke-direct {v0, v13, v12, v12}, <init>(Ljava/lang/String;II)V

    sput-object v0, _va:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const/16 v13, 0xc

    const-string v14, "PREDCTIONSTATE"

    invoke-direct {v0, v14, v13, v13}, <init>(Ljava/lang/String;II)V

    sput-object v0, awa:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const/16 v14, 0xd

    const-string v15, "HIGHUSEDAPP"

    invoke-direct {v0, v15, v14, v14}, <init>(Ljava/lang/String;II)V

    sput-object v0, bwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const/16 v15, 0xe

    const-string v14, "FREEZEAPP"

    invoke-direct {v0, v14, v15, v15}, <init>(Ljava/lang/String;II)V

    sput-object v0, cwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v14, "PROCESSSTATE"

    const/16 v15, 0xf

    const/16 v13, 0xf

    invoke-direct {v0, v14, v15, v13}, <init>(Ljava/lang/String;II)V

    sput-object v0, dwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v13, "FRONTAPP"

    const/16 v14, 0x10

    const/16 v15, 0x10

    invoke-direct {v0, v13, v14, v15}, <init>(Ljava/lang/String;II)V

    sput-object v0, ewa:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v13, "USERLOCK"

    const/16 v14, 0x11

    const/16 v15, 0x11

    invoke-direct {v0, v13, v14, v15}, <init>(Ljava/lang/String;II)V

    sput-object v0, fwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v13, "HASNOCLEAR"

    const/16 v14, 0x12

    const/16 v15, 0x12

    invoke-direct {v0, v13, v14, v15}, <init>(Ljava/lang/String;II)V

    sput-object v0, gwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v13, "BlUETOOTH"

    const/16 v14, 0x13

    const/16 v15, 0x13

    invoke-direct {v0, v13, v14, v15}, <init>(Ljava/lang/String;II)V

    sput-object v0, hwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v13, "AUDIO_PID"

    const/16 v14, 0x14

    const/16 v15, 0x14

    invoke-direct {v0, v13, v14, v15}, <init>(Ljava/lang/String;II)V

    sput-object v0, iwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v13, "VIDEO_PID"

    const/16 v14, 0x15

    const/16 v15, 0x15

    invoke-direct {v0, v13, v14, v15}, <init>(Ljava/lang/String;II)V

    sput-object v0, jwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v13, "TRAFFICHIGH"

    const/16 v14, 0x16

    const/16 v15, 0x16

    invoke-direct {v0, v13, v14, v15}, <init>(Ljava/lang/String;II)V

    sput-object v0, kwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v13, "FLOATWIN"

    const/16 v14, 0x17

    const/16 v15, 0x17

    invoke-direct {v0, v13, v14, v15}, <init>(Ljava/lang/String;II)V

    sput-object v0, lwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v13, "PSENSOR"

    const/16 v14, 0x18

    const/16 v15, 0x18

    invoke-direct {v0, v13, v14, v15}, <init>(Ljava/lang/String;II)V

    sput-object v0, mwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    const/16 v0, 0x19

    new-array v0, v0, [Lcom/android/server/am/AppRecordManager$ListenerType;

    sget-object v13, Xva:Lcom/android/server/am/AppRecordManager$ListenerType;

    aput-object v13, v0, v1

    sget-object v1, SENSOR:Lcom/android/server/am/AppRecordManager$ListenerType;

    aput-object v1, v0, v2

    sget-object v1, AUDIO:Lcom/android/server/am/AppRecordManager$ListenerType;

    aput-object v1, v0, v3

    sget-object v1, VIDEO:Lcom/android/server/am/AppRecordManager$ListenerType;

    aput-object v1, v0, v4

    sget-object v1, CAMERA:Lcom/android/server/am/AppRecordManager$ListenerType;

    aput-object v1, v0, v5

    sget-object v1, FLASHLIGHT:Lcom/android/server/am/AppRecordManager$ListenerType;

    aput-object v1, v0, v6

    sget-object v1, VIBRATOR:Lcom/android/server/am/AppRecordManager$ListenerType;

    aput-object v1, v0, v7

    sget-object v1, GPS:Lcom/android/server/am/AppRecordManager$ListenerType;

    aput-object v1, v0, v8

    sget-object v1, TRAFFIC:Lcom/android/server/am/AppRecordManager$ListenerType;

    aput-object v1, v0, v9

    sget-object v1, Yva:Lcom/android/server/am/AppRecordManager$ListenerType;

    aput-object v1, v0, v10

    sget-object v1, Zva:Lcom/android/server/am/AppRecordManager$ListenerType;

    aput-object v1, v0, v11

    sget-object v1, _va:Lcom/android/server/am/AppRecordManager$ListenerType;

    aput-object v1, v0, v12

    sget-object v1, awa:Lcom/android/server/am/AppRecordManager$ListenerType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, bwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, cwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, dwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, ewa:Lcom/android/server/am/AppRecordManager$ListenerType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, fwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, gwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, hwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, iwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, jwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, kwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, lwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, mwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sput-object v0, $VALUES:[Lcom/android/server/am/AppRecordManager$ListenerType;

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

    iput p3, p0, value:I

    return-void
.end method

.method public static valueOf(I)Lcom/android/server/am/AppRecordManager$ListenerType;
    .locals 0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Xva:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_0
    sget-object p0, mwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_1
    sget-object p0, lwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_2
    sget-object p0, kwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_3
    sget-object p0, jwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_4
    sget-object p0, iwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_5
    sget-object p0, hwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_6
    sget-object p0, gwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_7
    sget-object p0, fwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_8
    sget-object p0, ewa:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_9
    sget-object p0, dwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_a
    sget-object p0, cwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_b
    sget-object p0, bwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_c
    sget-object p0, awa:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_d
    sget-object p0, _va:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_e
    sget-object p0, Zva:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_f
    sget-object p0, Yva:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_10
    sget-object p0, TRAFFIC:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_11
    sget-object p0, GPS:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_12
    sget-object p0, VIBRATOR:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_13
    sget-object p0, FLASHLIGHT:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_14
    sget-object p0, CAMERA:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_15
    sget-object p0, VIDEO:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_16
    sget-object p0, AUDIO:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_17
    sget-object p0, SENSOR:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/AppRecordManager$ListenerType;
    .locals 1

    const-class v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/AppRecordManager$ListenerType;
    .locals 1

    sget-object v0, $VALUES:[Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v0}, [Lcom/android/server/am/AppRecordManager$ListenerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object v0
.end method


# virtual methods
.method public final value()I
    .locals 0

    iget p0, p0, value:I

    return p0
.end method
