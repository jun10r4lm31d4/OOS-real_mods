.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$RotationButtonController$TaskStackListenerImpl$zCjhcFpUTQGdzdQEgIMUjTrjPZU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/RotationButtonController$TaskStackListenerImpl;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/RotationButtonController$TaskStackListenerImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, f$0:Lcom/android/systemui/statusbar/phone/RotationButtonController$TaskStackListenerImpl;

    iput p2, p0, f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, f$0:Lcom/android/systemui/statusbar/phone/RotationButtonController$TaskStackListenerImpl;

    iget p0, p0, f$1:I

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController$TaskStackListenerImpl;->lambda$onActivityRequestedOrientationChanged$0$RotationButtonController$TaskStackListenerImpl(ILandroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method
