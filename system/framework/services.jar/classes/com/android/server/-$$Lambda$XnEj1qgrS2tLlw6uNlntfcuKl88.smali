.class public final synthetic Lcom/android/server/-$$Lambda$XnEj1qgrS2tLlw6uNlntfcuKl88;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/LocationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, f$0:Lcom/android/server/LocationManagerService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, f$0:Lcom/android/server/LocationManagerService;

    check-cast p1, Landroid/location/IGnssMeasurementsListener;

    invoke-virtual {v0, p1}, Lcom/android/server/LocationManagerService;->removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V

    return-void
.end method
