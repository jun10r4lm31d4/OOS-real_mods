.class Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ISessionControllerCallbackHolder"
.end annotation


# instance fields
.field private final mCallback:Landroid/media/session/ISessionControllerCallback;

.field private final mPackageName:Ljava/lang/String;

.field private final mUid:I

.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, mCallback:Landroid/media/session/ISessionControllerCallback;

    iput-object p3, p0, mPackageName:Ljava/lang/String;

    iput p4, p0, mUid:I

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;
    .locals 1

    iget-object v0, p0, mCallback:Landroid/media/session/ISessionControllerCallback;

    return-object v0
.end method
