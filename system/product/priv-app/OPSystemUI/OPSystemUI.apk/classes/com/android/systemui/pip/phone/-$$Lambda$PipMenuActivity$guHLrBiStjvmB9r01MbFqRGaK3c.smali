.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$guHLrBiStjvmB9r01MbFqRGaK3c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/pip/phone/PipMenuActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, f$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, f$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->lambda$dismissPip$8$PipMenuActivity()V

    return-void
.end method
