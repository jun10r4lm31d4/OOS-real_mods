.class final Lcom/android/server/am/ActivityManagerService$Association;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Association"
.end annotation


# instance fields
.field mCount:I

.field mLastState:I

.field mLastStateUptime:J

.field mNesting:I

.field final mSourceProcess:Ljava/lang/String;

.field final mSourceUid:I

.field mStartTime:J

.field mStateTimes:[J

.field final mTargetComponent:Landroid/content/ComponentName;

.field final mTargetProcess:Ljava/lang/String;

.field final mTargetUid:I

.field mTime:J


# direct methods
.method constructor <init>(ILjava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x16

    iput v0, p0, mLastState:I

    new-array v0, v0, [J

    iput-object v0, p0, mStateTimes:[J

    iput p1, p0, mSourceUid:I

    iput-object p2, p0, mSourceProcess:Ljava/lang/String;

    iput p3, p0, mTargetUid:I

    iput-object p4, p0, mTargetComponent:Landroid/content/ComponentName;

    iput-object p5, p0, mTargetProcess:Ljava/lang/String;

    return-void
.end method
