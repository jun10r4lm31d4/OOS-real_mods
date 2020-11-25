.class Lcom/android/server/am/C;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/D;


# direct methods
.method constructor <init>(Lcom/android/server/am/D;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/am/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 0

    iget-object p0, p0, this$0:Lcom/android/server/am/D;

    invoke-static {p0}, Lcom/android/server/am/D;->bio(Lcom/android/server/am/D;)V

    return-void
.end method
