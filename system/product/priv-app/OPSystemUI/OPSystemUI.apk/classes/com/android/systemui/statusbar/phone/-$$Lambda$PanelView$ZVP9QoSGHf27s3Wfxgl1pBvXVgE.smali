.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$ZVP9QoSGHf27s3Wfxgl1pBvXVgE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/PanelView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, f$0:Lcom/android/systemui/statusbar/phone/PanelView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, f$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->lambda$setExpandedHeightInternal$1$PanelView()V

    return-void
.end method
