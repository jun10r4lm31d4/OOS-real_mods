.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$GXuArppP3Gxe5JvIROZsOAy5v74;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/plugins/ActivityStarter$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, f$0:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, f$0:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$startActivityDismissingKeyguard$18(Lcom/android/systemui/plugins/ActivityStarter$Callback;)V

    return-void
.end method
