.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$u27UVgFXO2Fq-gY8QI0m_qAQyl8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, f$0:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, f$0:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->setTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method
