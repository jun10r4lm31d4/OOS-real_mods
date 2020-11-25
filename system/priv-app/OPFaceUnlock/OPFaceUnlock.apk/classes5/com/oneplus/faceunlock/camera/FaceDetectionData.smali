.class public Lcom/oneplus/faceunlock/camera/FaceDetectionData;
.super Ljava/lang/Object;
.source "FaceDetectionData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;,
        Lcom/oneplus/faceunlock/camera/FaceDetectionData$FrameDimension;,
        Lcom/oneplus/faceunlock/camera/FaceDetectionData$CameraRect;,
        Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionInfo;
    }
.end annotation


# static fields
.field public static final CV_KEY_POINT_NUM:I = 0x6a

.field public static final MAX_ROI:I = 0xa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final faceDetectionType:Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;

.field public final faces:[Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionInfo;

.field public final frameDimension:Lcom/oneplus/faceunlock/camera/FaceDetectionData$FrameDimension;

.field public final frameId:I

.field public final numOfFaces:I

.field public final updateFlag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/oneplus/faceunlock/camera/FaceDetectionData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(II[Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionInfo;Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;Lcom/oneplus/faceunlock/camera/FaceDetectionData$FrameDimension;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, frameId:I

    iput p2, p0, numOfFaces:I

    iput-object p3, p0, faces:[Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionInfo;

    iput-object p4, p0, faceDetectionType:Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;

    iput-object p5, p0, frameDimension:Lcom/oneplus/faceunlock/camera/FaceDetectionData$FrameDimension;

    iput p6, p0, updateFlag:I

    return-void
.end method

.method public static parseFaceDetectionData([B)Lcom/oneplus/faceunlock/camera/FaceDetectionData;
    .locals 30

    invoke-static/range {p0 .. p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v18

    const/16 v4, 0xa

    move/from16 v0, v18

    if-eq v0, v4, :cond_0

    const/4 v11, 0x0

    :goto_0
    return-object v11

    :cond_0
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    sget-object v4, TAG:Ljava/lang/String;

    const-string v11, "parseFaceDetectionData() - Frame id : "

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v4, v11, v0}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    sget-object v4, TAG:Ljava/lang/String;

    const-string v11, "parseFaceDetectionData() - Number of faces : "

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v4, v11, v0}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v14, 0x0

    if-lez v13, :cond_3

    new-array v14, v13, [Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionInfo;

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    mul-int/lit16 v11, v13, 0x370

    if-ge v4, v11, :cond_1

    sget-object v4, TAG:Ljava/lang/String;

    const-string v11, "parseFaceDetectionData() - Remaining data size is invalid"

    invoke-static {v4, v11}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    goto :goto_0

    :cond_1
    const/16 v21, 0x0

    :goto_1
    move/from16 v0, v21

    if-ge v0, v13, :cond_3

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    sget-object v4, TAG:Ljava/lang/String;

    const-string v11, "parseFaceDetectionData() - ==== Face id : "

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v4, v11, v0}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    sget-object v4, TAG:Ljava/lang/String;

    const-string v11, "parseFaceDetectionData() - ==== Score : "

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v4, v11, v0}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v23

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v24

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v26

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v20

    new-instance v7, Lcom/oneplus/faceunlock/camera/FaceDetectionData$CameraRect;

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v20

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/oneplus/faceunlock/camera/FaceDetectionData$CameraRect;-><init>(IIII)V

    sget-object v4, TAG:Ljava/lang/String;

    const-string v11, "parseFaceDetectionData() - ==== Rectangle : "

    const/16 v27, 0x7

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    const-string v29, ","

    aput-object v29, v27, v28

    const/16 v28, 0x2

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x3

    const-string v29, ","

    aput-object v29, v27, v28

    const/16 v28, 0x4

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x5

    const-string v29, ","

    aput-object v29, v27, v28

    const/16 v28, 0x6

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v27

    invoke-static {v4, v11, v0}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v4, 0xd4

    new-array v8, v4, [F

    const/16 v22, 0x0

    :goto_2
    const/16 v4, 0xd4

    move/from16 v0, v22

    if-ge v0, v4, :cond_2

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    aput v4, v8, v22

    add-int/lit8 v4, v22, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v11

    aput v11, v8, v4

    add-int/lit8 v22, v22, 0x2

    goto :goto_2

    :cond_2
    sget-object v4, TAG:Ljava/lang/String;

    const-string v11, "parseFaceDetectionData() - ==== Face key points : "

    invoke-static {v8}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v4, v11, v0}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    sget-object v4, TAG:Ljava/lang/String;

    const-string v11, "parseFaceDetectionData() - ==== Gender : "

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v4, v11, v0}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    sget-object v4, TAG:Ljava/lang/String;

    const-string v11, "parseFaceDetectionData() - ==== Race : "

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v4, v11, v0}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v4, Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionInfo;

    invoke-direct/range {v4 .. v10}, Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionInfo;-><init>(IILcom/oneplus/faceunlock/camera/FaceDetectionData$CameraRect;[FII)V

    aput-object v4, v14, v21

    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    :cond_3
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v25

    sget-object v4, TAG:Ljava/lang/String;

    const-string v11, "parseFaceDetectionData() - Face detection type : "

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v4, v11, v0}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    packed-switch v25, :pswitch_data_0

    sget-object v15, Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;->CAMERA_FD_SNAPSHOT:Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;

    :goto_3
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v26

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v20

    new-instance v16, Lcom/oneplus/faceunlock/camera/FaceDetectionData$FrameDimension;

    move-object/from16 v0, v16

    move/from16 v1, v26

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/oneplus/faceunlock/camera/FaceDetectionData$FrameDimension;-><init>(II)V

    sget-object v4, TAG:Ljava/lang/String;

    const-string v11, "parseFaceDetectionData() - Frame dimension : "

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    const-string v28, "x"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-static {v4, v11, v0, v1, v2}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v17

    sget-object v4, TAG:Ljava/lang/String;

    const-string v11, "parseFaceDetectionData() - Update flag : "

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v4, v11, v0}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v11, Lcom/oneplus/faceunlock/camera/FaceDetectionData;

    invoke-direct/range {v11 .. v17}, <init>(II[Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionInfo;Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;Lcom/oneplus/faceunlock/camera/FaceDetectionData$FrameDimension;I)V

    goto/16 :goto_0

    :pswitch_0
    sget-object v15, Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;->CAMERA_FD_PREVIEW:Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static parseFaceDetectionDataForCamera2([B)Lcom/oneplus/faceunlock/camera/FaceDetectionData;
    .locals 27

    invoke-static/range {p0 .. p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v22

    sget-object v4, TAG:Ljava/lang/String;

    const-string v8, "parseFaceDetectionDataForCamera2() - Request id : "

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v4, v8, v9}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v21

    sget-object v4, TAG:Ljava/lang/String;

    const-string v8, "parseFaceDetectionDataForCamera2() - Face counts : "

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4, v8, v9}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v25, 0xf0

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int v4, v4, v25

    invoke-virtual {v15, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-lez v21, :cond_0

    move/from16 v0, v21

    new-array v11, v0, [Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionInfo;

    :goto_0
    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    sget-object v4, TAG:Ljava/lang/String;

    const-string v8, "parseFaceDetectionDataForCamera2() - ==== Face id : "

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4, v8, v9}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    sget-object v4, TAG:Ljava/lang/String;

    const-string v8, "parseFaceDetectionDataForCamera2() - ==== Score : "

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4, v8, v9}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v20

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v24

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v26

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v17

    new-instance v7, Lcom/oneplus/faceunlock/camera/FaceDetectionData$CameraRect;

    move/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v17

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/oneplus/faceunlock/camera/FaceDetectionData$CameraRect;-><init>(IIII)V

    sget-object v4, TAG:Ljava/lang/String;

    const-string v8, "parseFaceDetectionDataForCamera2() - ==== Rectangle : "

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v10

    const/4 v10, 0x1

    const-string v12, ","

    aput-object v12, v9, v10

    const/4 v10, 0x2

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v10

    const/4 v10, 0x3

    const-string v12, ","

    aput-object v12, v9, v10

    const/4 v10, 0x4

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v10

    const/4 v10, 0x5

    const-string v12, ","

    aput-object v12, v9, v10

    const/4 v10, 0x6

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v10

    invoke-static {v4, v8, v9}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v4, TAG:Ljava/lang/String;

    const-string v8, "parseFaceDetectionDataForCamera2() - ==== Gender : "

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4, v8, v9}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v4, TAG:Ljava/lang/String;

    const-string v8, "parseFaceDetectionDataForCamera2() - ==== Race : "

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4, v8, v9}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v4, Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionInfo;

    const/16 v8, 0xd4

    new-array v8, v8, [F

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct/range {v4 .. v10}, Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionInfo;-><init>(IILcom/oneplus/faceunlock/camera/FaceDetectionData$CameraRect;[FII)V

    aput-object v4, v11, v18

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    :cond_0
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_1
    rsub-int/lit8 v4, v21, 0xa

    mul-int/lit8 v16, v4, 0x18

    if-lez v16, :cond_2

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int v4, v4, v16

    invoke-virtual {v15, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_2
    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    const/16 v19, 0x0

    :goto_3
    const/16 v4, 0xd4

    move/from16 v0, v19

    if-ge v0, v4, :cond_3

    aget-object v4, v11, v18

    iget-object v4, v4, Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionInfo;->faceKeyPoints:[F

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    int-to-float v8, v8

    aput v8, v4, v19

    add-int/lit8 v19, v19, 0x2

    goto :goto_3

    :cond_3
    const/16 v19, 0x1

    :goto_4
    const/16 v4, 0xd4

    move/from16 v0, v19

    if-ge v0, v4, :cond_4

    aget-object v4, v11, v18

    iget-object v4, v4, Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionInfo;->faceKeyPoints:[F

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    int-to-float v8, v8

    aput v8, v4, v19

    add-int/lit8 v19, v19, 0x2

    goto :goto_4

    :cond_4
    sget-object v4, TAG:Ljava/lang/String;

    const-string v8, "parseFaceDetectionDataForCamera2() - ==== Face key points : "

    aget-object v9, v11, v18

    iget-object v9, v9, Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionInfo;->faceKeyPoints:[F

    invoke-static {v9}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v8, v9}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    :cond_5
    new-instance v8, Lcom/oneplus/faceunlock/camera/FaceDetectionData;

    const/4 v9, -0x1

    sget-object v12, Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;->UNKNOWN:Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;

    const/4 v13, 0x0

    const/4 v14, -0x1

    move/from16 v10, v21

    invoke-direct/range {v8 .. v14}, <init>(II[Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionInfo;Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionType;Lcom/oneplus/faceunlock/camera/FaceDetectionData$FrameDimension;I)V

    return-object v8
.end method
