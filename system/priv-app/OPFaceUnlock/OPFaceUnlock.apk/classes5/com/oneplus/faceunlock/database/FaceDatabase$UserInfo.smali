.class Lcom/oneplus/faceunlock/database/FaceDatabase$UserInfo;
.super Ljava/lang/Object;
.source "FaceDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/database/FaceDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserInfo"
.end annotation


# instance fields
.field public volatile id:J


# direct methods
.method constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_id"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/oneplus/faceunlock/utils/Utils;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, id:J

    return-void
.end method
