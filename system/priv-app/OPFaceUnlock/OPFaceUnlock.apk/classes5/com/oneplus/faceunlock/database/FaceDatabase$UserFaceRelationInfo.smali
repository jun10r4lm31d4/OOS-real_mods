.class Lcom/oneplus/faceunlock/database/FaceDatabase$UserFaceRelationInfo;
.super Ljava/lang/Object;
.source "FaceDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/database/FaceDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserFaceRelationInfo"
.end annotation


# instance fields
.field public volatile faceId:J

.field public volatile userId:J


# direct methods
.method constructor <init>(Landroid/database/Cursor;)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "user_id"

    invoke-static {p1, v0, v2}, Lcom/oneplus/faceunlock/utils/Utils;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, userId:J

    const-string v0, "face_id"

    invoke-static {p1, v0, v2}, Lcom/oneplus/faceunlock/utils/Utils;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, faceId:J

    return-void
.end method
