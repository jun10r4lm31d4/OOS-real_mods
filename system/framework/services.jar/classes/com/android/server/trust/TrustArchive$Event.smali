.class Lcom/android/server/trust/TrustArchive$Event;
.super Ljava/lang/Object;
.source "TrustArchive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustArchive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Event"
.end annotation


# instance fields
.field final agent:Landroid/content/ComponentName;

.field final duration:J

.field final elapsedTimestamp:J

.field final flags:I

.field final managingTrust:Z

.field final message:Ljava/lang/String;

.field final type:I

.field final userId:I


# direct methods
.method private constructor <init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, type:I

    iput p2, p0, userId:I

    iput-object p3, p0, agent:Landroid/content/ComponentName;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, elapsedTimestamp:J

    iput-object p4, p0, message:Ljava/lang/String;

    iput-wide p5, p0, duration:J

    iput p7, p0, flags:I

    iput-boolean p8, p0, managingTrust:Z

    return-void
.end method

.method synthetic constructor <init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$1;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, <init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZ)V

    return-void
.end method
